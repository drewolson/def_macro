= def_macro

* http://github.com/dfg59/def_macro/tree/master

== DESCRIPTION:

Macros for ruby

== FEATURES/PROBLEMS:

* A few features, probably lots of problems

== SYNOPSIS:

  The classic with macro:

  def_macro :with do |args,body|
    eval args.first
    eval body
  end

  with proc { a = 1; b = 2 } do
    puts a + b
  end                         # => 3

  The classic loop macro:

  def_macro :loop do |args,body|
    (eval args.first).times do
      eval body
    end
  end

  loop 2 do
    puts "hi"       
  end                        # => "hi" "hi"      

== REQUIREMENTS:

* ruby2ruby 1.1.9 or later

== INSTALL:

* sudo gem install dfg59-def_macro --source=http://gems.github.com
* won't work until I release it

== LICENSE:

(The MIT License)

Copyright (c) 2008 Drew Olson

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
