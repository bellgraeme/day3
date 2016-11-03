# # # Homework

# # ### A. Given the following data structure:

# # ```
#  lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']
# # # ```

# # # 1. Work out how many stops there are in the lines array
#  stops = lines.length
#  puts stops
#  # 2. Return 'Edinburgh Park' from the array
#  puts lines[1]
# # # 3. How many ways can we return 'Princes Street' from the array?
# puts lines[5]
# # # 4. Work out the index position of 'Haymarket' 
# puts lines.index("Haymarket")

# # # 5. Add 'Airport' to the start of the array 
# lines.insert(0,'Airport')
# puts lines
# # # 6. Add 'York Place' to the end of the array
# lines.insert(-1, "York Place")
#  puts lines
# # # 7. Remove 'Edinburgh Park' from the array using it's name 
# lines.delete("Edinburgh Park")
# # # 8. Delete 'Edinburgh Park' from the array by index
# lines.delete_at(2)
# # # 9. Reverse the positions of the stops in the array
#  puts lines.reverse
# # # 10. Print out all of the stops using a for loop and a while loop
# def prints_stops(array)
#   for x in array
    
#     puts x

#   end
# end

# def prints_stops_while(array)
#   counter = 0
#   while (counter < array.length)
#     puts array[counter]
#     counter += 1
#   end
# end

#  prints_stops(lines)
# prints_stops_while(lines)

# # ### B. Given the following data structure:

# # ```
# my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# # ```

# # 1. How would you return the string `"One"`?
#   puts my_hash[1]
# # 2. How would you return the string `"Two"`?
# puts my_hash[:two]
# # 3. How would you return the number `2`?
# puts my_hash["two"]
# # 4. How would you add `{3 => "Three"}` to the hash? 
# my_hash.merge!( {3 => "Three"})
# print my_hash 
# # 5. How would you add `{:four => 4}` to the hash? 
# my_hash.merge!( {:four => 4})
# print my_hash
# # ### C. Given the following data structure:

# ```
  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        :fluffy => "cat",
        :fido => "dog",
        :spike => "dog"
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linithgow",
      :pets => {
        :nemo => "fish",
        :kevin => "fish",
        :rover => "dog",
        :rupert => "parrot"
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        :sssteven => "snake"
      }
    },
  }
# ```

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
puts users[ "Jonathan"][:twitter]
# 2. Return Erik's hometown 
puts users["Erik"][:hometown]
# 3. Return the array of Erik's favorite numbers
puts users["Erik"][:favourite_numbers]
# 4. Return the type of Avril's pet Colin????sssteven????
puts users["Avril"][:pets][:sssteven]
# 5. Return the smallest of Erik's favorite numbers
def erik_small_number(users)
  numbers = users["Erik"][:favourite_numbers]
  numbers.sort{ |a, b| a <=> b }
  puts numbers[0]
end

erik_small_number( users )
# 6. Return an array of Avril's favorite numbers that are even 
def avril_even_number(users)
  even_numbers = []
  numbers = users["Avril"][:favourite_numbers ]
   numbers.each{ |x|
    if x%2 == 0
      even_numbers.push(x)
    end
}  
  return even_numbers
end

puts avril_even_number(users)
# 7. Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates
def jon_sorted_number(users)
  numbers = users["Jonathan"][:favourite_numbers]
  numbers.sort!{|a, b| a <=> b}
  numbers.uniq!
  puts numbers
end

jon_sorted_number(users)


# 8. Add the number `7` to Erik's favorite numbers
users["Erik"][:favourite_numbers] << [7]
puts users["Erik"][:favourite_numbers]
# 9. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
puts users["Erik"][:home_town]
# 10. Add a pet dog to Erik called "Fluffy"
dog = {dog: "Fluffy"}
users["Erik"][:pets].merge!(dog)
puts users["Erik"][:pets]
# 11. Add yourself to the users hash"
user2 = {"Graeme" => "Going to sleep now"}
users.merge!(user2)

puts users
