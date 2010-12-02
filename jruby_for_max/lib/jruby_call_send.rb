def my_method(arg0,arg1,arg2)
  "arg0=#{arg0}, arg1=#{arg1}, arg2=#{arg2}"
end

def another_method
  "another method's return value"
end

class MyClass
  def method(arg)
    %w{the class received value} << arg.inspect
  end
end

$object = MyClass.new