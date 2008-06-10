require 'rubygems'
require 'ruby2ruby'

module DefMacro
  VERSION = "0.0.1"
  
  def self.cleanse_body(body)
    body = body.split("\n")
    if body.size > 1
      body[1...-1].join("\n")
    else
      cleanse_arg(body.first)
    end
  end

  def self.cleanse_arg(arg)
    arg[/\{([^}]+)\}/,1]
  end
end

class Object
  def def_macro(name,&body)
    instance_eval <<-EOS
      def #{name}(*args,&block) 
        mac_body = DefMacro.cleanse_body(block.to_ruby)
        args.map! do |arg|
          if arg.kind_of? Proc
            DefMacro.cleanse_arg(arg.to_ruby)
          else
            arg.to_s
          end
        end
        (eval "#{body.to_ruby}").call(args,mac_body)
      end  
    EOS
  end
end