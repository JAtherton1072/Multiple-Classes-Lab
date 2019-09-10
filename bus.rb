class Bus

 attr_accessor :route_number, :destination, :passengers


  def initialize(route_number, destination, passengers=[])
     @route_numer = route_number
     @destination = destination
     @passengers = passengers

  end


 def drive
  return "Brum brum"

 end


 def pick_up(person)
    @passengers.push(person)


 end


 def drop_off(person)
    @passengers.delete(person)


 end
  def drop_all_off()

    @passengers.clear

  end


  def pick_up_from_stop(stop)
    for person in stop.queue()
      pick_up(person)
    end
    stop.clear_queue()
  end








end
