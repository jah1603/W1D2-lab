class BusStop

attr_reader(:name, :queue)

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def count_people_queuing
    return @queue.length()
  end

  def add_person_to_queue(person)
    return queue << person
  end
  
end
