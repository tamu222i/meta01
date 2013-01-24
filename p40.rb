3.times do
  class C
    puts "Hello"
  end
end

class D
  def x;'x'; end
end
class D
  def y; 'y'; end
end
obj = D.new
obj.x
obj.y
