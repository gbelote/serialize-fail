require 'test_helper'

class ATest < ActiveSupport::TestCase
  test "weird failure" do
    a = A.new
    b = B.new
    b.foo = 'bar'
    a.data = b

    assert a.valid?
    assert b.valid?
    puts "before: #{ a.data.inspect }"
    assert a.save
    puts "after:  #{ a.data.inspect }"

    assert a.valid?
  end
end
