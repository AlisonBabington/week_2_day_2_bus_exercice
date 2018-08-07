require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')

class PersonTest < MiniTest::Test
  def test_check_person_has_name
    person1 = Person.new("Ben", 24)
    assert_equal("Ben", person1.name)
  end

  def test_check_person_has_age
    person1 = Person.new("Ben", 24)
    assert_equal(24, person1.age)
  end
end
