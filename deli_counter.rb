require "pry"

katz_deli = []


def take_a_number(katz_que, customer)

katz_que.push(customer)
puts "Welcome, #{customer}. you are number #{katz_que.index(customer) + 1} in line."
end

def line(katz_que)
current_que = katz_que.map.with_index { |customer, index| "#{index + 1}. #{customer}"}
if katz_que.length == 0 
    puts "The line is currently empty" 
else 
    puts "The line is currently:" + " #{current_que.join(" ")}"
end
end

def now_serving(katz_que)
    if katz_que.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_que.shift()}."
       
    end
end


take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

now_serving(katz_deli) #=> "Currently serving Ada."

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

now_serving(katz_deli) #=> "Currently serving Grace."

line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"
