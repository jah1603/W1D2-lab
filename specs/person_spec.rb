require("minitest/autorun")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

@person1 = Person.new("Tony", 24)
@person2 = Person.new("Zsolt", 21)

end
