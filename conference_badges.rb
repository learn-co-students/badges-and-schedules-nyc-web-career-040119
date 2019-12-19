def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map do |name|
   badge_maker name
  end
end

def assign_rooms(attendees)
  attendees.map.with_index do |name, i|
    "Hello, #{name}! You'll be assigned to room #{i + 1}!"
  end
end

def printer(array)
  batch_badge_creator(array).each do |badge|
    puts badge
  end
  assign_rooms(array).each do |assign|
    puts assign
  end
end
