def badge_maker(name)
  return "Hello, my name is #{name}."
end 

def batch_badge_creator(array)
  result = []
  array.each_with_index do |name|
    result << badge_maker(name)
  end 
  return result
end 

def assign_rooms(speakers)
  result = []
  speakers.each_with_index do |name, index|
    str = "Hello, #{name}! You'll be assigned to room #{index+1}!"
    result << str
  end
  return result
end

def printer(people)
  badges = batch_badge_creator(people)
  rooms = assign_rooms(people)
  
  badges.each do |name|
    puts name
  end
  
  rooms.each do |room|
    puts room
  end
end

