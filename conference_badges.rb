def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(arr)
  new_arr = []
  arr.each do |name | 
    new_arr << "Hello, my name is #{name}."
  end
  return new_arr
end

def assign_rooms(arr)
  new_arr = []
  arr.each_with_index do |name, i | 
    new_arr << "Hello, #{name}! You'll be assigned to room #{i + 1}!"
  end
  return new_arr
end

def printer(arr)
  badges = batch_badge_creator(arr)
  badges.each {|badge | puts badge}
  
  rooms = assign_rooms(arr)
  rooms.each {|room | puts room}
end
 