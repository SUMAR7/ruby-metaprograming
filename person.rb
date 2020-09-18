class Person
  attr_accessor :name, :age, :gender, :height, :weight

  def initialize(name, age, gender, height, weight)
    @name = name
    @age = age
    @gender = gender
    @height = height
    @weight = weight

    def method_missing(method_name, *args, &block)
      if method_name.to_s.include?('summary')
        # dynamically creating methods
        puts "This is the summary of person named: #{name}"
      else
        puts "#{method_name} is missing..."
      end
    end
  end

  def self.create_method(name)
    define_method("#{name}s_bio") do |args|
      "This is my bio with args #{args}"
    end
  end
end