require ('minitest/autorun')
require('minitest/rg')
require_relative ('../bus')
require_relative ('../person')
require_relative('../bus_stop')

class BusTest < Minitest::Test

 def setup()

  @bus1 = Bus.new(51, "New York")



  @person1 = Person.new("Jack", 24)
  @person2 = Person.new("Jill", 22)
  @person3 = Person.new("Rachel", 6)


  # @passengers = [@person1, @person2, @person3]
 end


  def test_how_many_passengers_on_bus
  assert_equal(0, @bus1.passengers.count)

  end

  def test_add_person_to_passengers
   @bus1.pick_up(@person1)
    assert_equal(1, @bus1.passengers.count)
  end

  def test_remove_person_to_passengers
    @bus1.pick_up(@person1)
    @bus1.pick_up(@person2)
    @bus1.drop_off(@person1)
    assert_equal(1, @bus1.passengers.count)
  end

 def test_remove_all_passengers
   @bus1.pick_up(@person1)
   @bus1.pick_up(@person2)
   @bus1.drop_all_off()



   assert_equal(0, @bus1.passengers.count)
 end



 def test_pick_up_from_stop()
     @stop1 = BusStop.new("Forres")
     @stop1.add_to_queue(@person1)
     @bus1.pick_up_from_stop(@stop1)
     assert_equal(1, @bus1.passengers.count())
     assert_equal(0, @stop1.passenger_count())
   end




end
