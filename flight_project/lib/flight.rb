require "passenger"

class Flight
attr_reader :passengers
    def initialize(str,n)
        @capacity = n
        @flight_number = str
        @passengers = []
    end

    def full?
        @passengers.length == @capacity
    end

    def board_passenger(name)
        if !full? && name.has_flight?(@flight_number)
        @passengers << name 
        end
    end

    def list_passengers
      @passengers.map {|p| p.name }
    end

    def [](idx)
        @passengers[idx]
    end

    def << (name)
        board_passenger(name)
    end
end