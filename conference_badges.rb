def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array_names)
  array_badge_messages = []
  array_names.each do |i|
    array_badge_messages.push(badge_maker(i))
  end
  return array_badge_messages
end

def assign_rooms(array_names)
  array_room_numbers = []
  array_names.each_with_index do |name, index|
    array_room_numbers.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
  end
  return array_room_numbers
end

def printer(array_names)
  badges = batch_badge_creator(array_names)
  rooms = assign_rooms(array_names)
  #printer_queue = badges.zip(rooms)
  #printer_queue.each do |i|
  #  puts i
  #end
  badges.each do |i|
    puts i
  end

  rooms.each do |i|
    puts i
  end


end