# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name)
  batch_badge = []
  name.each do |badge_name|
    batch_badge << badge_maker(badge_name)
  end
  batch_badge
end

def assign_rooms(list)

#create an array for room 1-7
#return room assignment
#list is an array of people
  room = (1..7)
  speak_room = []
  
  list.zip(room).each do |assign, available|
    speak_room << "Hello, #{assign}! You'll be assigned to room #{available}!"
  end
  speak_room
end

def printer(attendees)
  #put first results of batch_badge_creator and then assign_rooms
  badges = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  
  badges.zip(rooms).each do |x,y|
    puts x
    puts y
  end
  
end