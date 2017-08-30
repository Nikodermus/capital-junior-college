system "clear"
@input = nil
@my_reg = /\a(\+|\-)?[0-9]+((\.)?[0-9]+)?\z/

def operation_1
    system "clear"
    puts "First"
    op1 = gets.chomp.gsub ' ', ''
    puts "Second"
    op2 = gets.chomp.gsub ' ', ''
    if(!op1.scan(@my_reg).empty? && !op2.scan(@my_reg).empty?)
        puts "Result is #{op1.to_f + op2.to_f}"
    else
        puts "Invalid data"
    end
    puts "Press any key to continue"
    gets.chomp
end

def operation_2
    puts "Enter numbers separated by a comma"
    opts_array = gets.chomp
    opts_array = opts_array.gsub ' ', ''
    opts_array = opts_array.split ','
    @use_array = []
    @invalid_array = []
    for i in opts_array
        if @my_reg.match(i)
            @use_array.push(i)
        else 
            @invalid_array.push(i)
        end
    end
    @sum = 0
    for i in @use_array
        @sum += i.to_f
    end
    puts "Sum equals to #{@sum}"
    puts "Invalid entries #{@invalid_array}"
    puts "Press any key to continue"
    gets.chomp
end
def operation_3
    system "clear"
    puts "First"
    op1 = gets.chomp.gsub ' ', ''
    puts "Second"
    op2 = gets.chomp.gsub ' ', ''
    if(!op1.scan(@my_reg).empty? && !op2.scan(@my_reg).empty?)
        puts "Result is #{op1.to_f - op2.to_f}"
    else
        puts "Invalid data"
    end
    puts "Press any key to continue"
    gets.chomp
end

def operation_4
    puts "Enter numbers separated by a comma"
    opts_array = gets.chomp
    opts_array = opts_array.gsub ' ', ''
    opts_array = opts_array.split ','
    @use_array = []
    @invalid_array = []
    for i in opts_array
        if @my_reg.match(i)
            @use_array.push(i)
        else 
            @invalid_array.push(i)
        end
    end
    @sum = 0
    for i in @use_array
        @sum -= i.to_f
    end
    puts "Sum equals to #{@sum}"
    puts "Invalid entries #{@invalid_array}"
    puts "Press any key to continue"
    gets.chomp
end
def operation_5
    system "clear"
    puts "First"
    op1 = gets.chomp.gsub ' ', ''
    puts "Second"
    op2 = gets.chomp.gsub ' ', ''
    if(!op1.scan(@my_reg).empty? && !op2.scan(@my_reg).empty?)
        puts "Result is #{op1.to_f * op2.to_f}"
    else
        puts "Invalid data"
    end
    puts "Press any key to continue"
    gets.chomp
end

def operation_6
    puts "Enter numbers separated by a comma"
    opts_array = gets.chomp
    opts_array = opts_array.gsub ' ', ''
    opts_array = opts_array.split ','
    @use_array = []
    @invalid_array = []
    for i in opts_array
        if @my_reg.match(i)
            @use_array.push(i)
        else 
            @invalid_array.push(i)
        end
    end
    @sum = 0
    for i in @use_array
        @sum *= i.to_f
    end
    puts "Sum equals to #{@sum}"
    puts "Invalid entries #{@invalid_array}"
    puts "Press any key to continue"
    gets.chomp
end
def operation_7
    system "clear"
    puts "First"
    op1 = gets.chomp.gsub ' ', ''
    puts "Second"
    op2 = gets.chomp.gsub ' ', ''
    if(!op1.scan(@my_reg).empty? && !op2.scan(@my_reg).empty?)
        puts "Result is #{op1.to_f / op2.to_f}"
    else
        puts "Invalid data"
    end
    puts "Press any key to continue"
    gets.chomp
end

def operation_8
    puts "Enter numbers separated by a comma"
    opts_array = gets.chomp
    opts_array = opts_array.gsub ' ', ''
    opts_array = opts_array.split ','
    @use_array = []
    @invalid_array = []
    for i in opts_array
        if @my_reg.match(i)
            @use_array.push(i)
        else 
            @invalid_array.push(i)
        end
    end
    @sum = 0
    for i in @use_array
        @sum = @sum / i.to_f
    end
    puts "Sum equals to #{@sum}"
    puts "Invalid entries #{@invalid_array}"
    puts "Press any key to continue"
    gets.chomp
end
def operation_9
    system "clear"
    puts "First"
    op1 = gets.chomp.gsub ' ', ''
    puts "Second"
    op2 = gets.chomp.gsub ' ', ''
    if(!op1.scan(@my_reg).empty? && !op2.scan(@my_reg).empty?)
        puts "Result is #{op1.to_f ** op2.to_f}"
    else
        puts "Invalid data"
    end
    puts "Press any key to continue"
    gets.chomp
end

def operation_10
    puts "Enter numbers separated by a comma"
    opts_array = gets.chomp
    opts_array = opts_array.gsub ' ', ''
    opts_array = opts_array.split ','
    @use_array = []
    @invalid_array = []
    for i in opts_array
        if @my_reg.match(i)
            @use_array.push(i)
        else 
            @invalid_array.push(i)
        end
    end
    @sum = @use_array[0].to_f
    n = 1
    for n in @use_array
        @sum **= n.to_f
    end
    puts "Sum equals to #{@sum}"
    puts "Invalid entries #{@invalid_array}"
    puts "Press any key to continue"
    gets.chomp
end

def menu
    system "clear"
    puts "–"*60
    puts "    Nikodermus Calculator    ".rjust(40, '#') + '#'*20
    puts "   Welcome   ".rjust(31,'#') + '#'* 29
    puts "–"*60
    puts ""
    puts "Menu:".rjust(10, ' ')
    puts ' '*7 + " 1. Sum of two numbers"
    puts ' '*7 + " 2. Sum of a number array"
    puts ' '*7 + " 3. Minus of two numbers"
    puts ' '*7 + " 4. Minus of a number array"
    puts ' '*7 + " 5. Times of two numbers"
    puts ' '*7 + " 6. Times of a number array"
    puts ' '*7 + " 7. Division of two numbers"
    puts ' '*7 + " 8. Division of a number array"
    puts ' '*7 + " 9. Pow of two numbers"
    puts ' '*7 + "10. Pow of a number array"
    puts ' '*7 + " 0. Exit"
end

while @input != 0 do
    menu
    @input = gets.chomp.to_i
  
    case @input
        when 1 then operation_1
        when 2 then operation_2
        when 3 then operation_3
        when 4 then operation_4
        when 5 then operation_5
        when 6 then operation_6
        when 7 then operation_7
        when 8 then operation_8
        when 9 then operation_9
        when 10 then operation_10
        else puts "Goodbye fella!"
    end
end
