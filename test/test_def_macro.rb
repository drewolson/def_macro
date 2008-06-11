require "test/unit"
require 'rubygems'
require 'need'
need { "../lib/def_macro" }

class Foo
  def_macro :with do |args,body|
    eval args.first
    eval body
  end
end

class TestDefMacro < Test::Unit::TestCase
  def test_with_macro
    foo = Foo.new
    
    result = foo.with proc { a = 1; b = 3 } do
      a + b
    end
    
    assert_equal(4, result)
  end
end