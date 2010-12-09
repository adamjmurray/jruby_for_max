def my_method(arg0,arg1,arg2)
  out0 "arg0=#{arg0}, arg1=#{arg1}, arg2=#{arg2}"
end

def another_method
  out0 "another method's return value"
end

class MyClass
  def method(*args)
    out0 'called out0 with:', *args
  end
end

@object = MyClass.new