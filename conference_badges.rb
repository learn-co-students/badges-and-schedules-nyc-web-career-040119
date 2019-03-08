# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each {|name| badges << badge_maker(name)}
  badges
end

def assign_rooms(attendees)
  roomAssignments = []
  attendees.each_with_index {|name, i| roomAssignments << "Hello, #{name}! You'll be assigned to room #{i+1}!"}
  roomAssignments
end

def printer(attendees)
  batch_badge_creator(attendees).each {|name| puts name}
  assign_rooms(attendees).each {|nameAndRoom| puts nameAndRoom}
end
