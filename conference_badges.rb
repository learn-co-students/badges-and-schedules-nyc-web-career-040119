# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end


def batch_badge_creator(list_of_names)
 badge_messages = []
 list_of_names.each do |list_of_names|
   badge_messages << badge_maker(list_of_names)
 end
 badge_messages
end


def assign_rooms(list_of_names)
  room_assignment = []
  list_of_names.each_with_index { |name , index|
 room_assignment << "Hello, #{name}! You'll be assigned to room #{index+1}!"
}
room_assignment
end
  
def printer(list_of_names)
  
  batch_badge_creator(list_of_names).each do |badge|
    puts badge
  end
  
  assign_rooms(list_of_names).each do |room_assignment|
    puts room_assignment
  end
end