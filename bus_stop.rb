class BusStop

  attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []

  end


  def passenger_count()
      return @queue.length()
    end

    def add_to_queue(person)
      @queue << person
    end


    def pick_up_from_stop
      @queue.clear
    end

    def clear_queue()
        @queue.clear()
      end



end
