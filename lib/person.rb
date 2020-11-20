class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end


# puts Person.instance_methods.sort
puts '======================================'
p = Person.new({
  :name => "Avi",
  :birthday => "01/29/1984",
  :hair_color => "brown"})
puts p.name
  puts Person.instance_methods.sort