# Write your code here.
require 'pry'
# Shows the line

katz_deli = []

def line_maker customers_arr


    str_arr = customers_arr.map.with_index do |cust, index|
        if index == (customers_arr.length - 1)
            "#{index + 1}. #{cust}"
        else
            "#{index + 1}. #{cust} "
            
        end
    end

    str_arr.join
end

def line arr
    
    if arr == []
        puts "The line is currently empty."
    else
        puts "The line is currently: #{line_maker(arr)}"
    end
end


# take a number method

def take_a_number katz_deli, str
# accepts two arguments: array for current line of people, name (str) of new person
    katz_deli << str
    puts "Welcome, #{str}. You are number #{katz_deli.length} in line."
end

def now_serving current_line
    if current_line == []
        puts 'There is nobody waiting to be served!'
    else
        puts "Currently serving #{current_line[0]}."
        current_line.shift
    end
end



# method puts out persons name along with position in the sline

# binding.pry