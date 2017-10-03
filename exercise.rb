
hash = {
          data: {
                  rooms:  [
                            { id: 1, room_number: "201", capacity: 50},
                            { id: 2, room_number: "301", capacity: 200 },
                            { id: 3, room_number: "1B", capacity: 100}
                           ],
                  events: [
                            { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
                            { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
                            { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
                            { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 }
                           ]
                }
        }

room201Capacity = hash[:data][:rooms][0][:capacity]
puts "Capacity of room 201 is #{room201Capacity}"


hash[:data][:events].each do |item|
  if ( item[:room_id] == 1 && item[:attendees] <= room201Capacity )
     puts "OK: The event has #{item[:attendees]} people and they will fit in a room with capacity of #{room201Capacity}"
  end
end
