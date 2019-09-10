require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class BusStopTest < MiniTest::Test

  def setup()
    @stop = BusStop.new("Nairn")
    @passenger1 = Person.new("Thomas", 30)
    @passenger2 = Person.new("Rachel", 23)
  end

  def test_add_person_to_queue()
    @stop.add_to_queue(@passenger1)
    assert_equal(1, @stop.passenger_count())
  end





  
end
