#Riemann Sum Project
#Joe Howard & Clive Unger & Colby Janecka

#require 'its 6AM on Sunday and I forgot I had to do this project'
require 'calculus'
require 'colorize'

puts "Welcome to Joe and Clive's Riemann Sum Calculator".red
puts " 1 - Find a Riemann Sum\n 2 - Definite Integral\n 3 - Exit\n".blue
print("What would you like to do?  ")
menu = gets.chomp
case menu
    when "1"
  
        print("What is the starting bound?  ")
        a = gets.to_f
        print("What is the ending bound?  ")
        b = gets.to_f
        print("How many subintervals?  ")
        subs = gets.to_f
        print("What is the function? (Exclude y = , use x as variable)  ")
        func = Calculus::Expression.new(gets.to_s)
        print("Left, Right, or Midpoint Riemann Sum (l/r/m)?  ")
        o = gets.strip.to_s #o for orientation ._.

        c = (b - a) / subs
        total = 0

        if o == ("l" || "L")
            i=a
            while i < b
                func["x"] = i
                total += func.calculate * c
                i += c
            end
            puts("Approximate area under the curve is #{total}")
        elsif o == ("r" || "R")
            i = a+c
            while i <= b #why is this <= while the rest are <
                func["x"] = i
                total += func.calculate * c
                i += c
            end
            puts("Approximate area under the curve is #{total}")
        elsif o == ("m" || "M")
            i = a+(c/2)
            while i < b
                func["x"] = i
                total += func.calculate * c
                i += c
            end
            puts("Approximate area under the curve is #{total}")
        else
            puts "Please input a valid orientation."
        end
    when "2"
        print("What is the starting bound?  ")
        a = gets.to_f
        print("What is the ending bound?  ")
        b = gets.to_f
        print("What is the function? (Exclude y = , use x as variable)  ")
        func = Calculus::Expression.new(gets.to_s)
        total = 0
        i=a
        c = 0.001
        while i <= b
            func["x"] = i
            total += func.calculate*c
            i+=c
        end
        puts "The area under the curve is #{total}"
    when "3"
        abort("Exiting") #triggered 
    else
        puts "Pick a valid option."
end

=begin

   (          (           (                                                (     
   )\         )\ )   (    )\ )    (       )   )      (   (        )  (     )\ )  
 (((_)   (   (()/(  ))\  (()/(    )(   ( /(  /((    ))\  )\ )  ( /(  )(   (()/(  
 )\___   )\   ((_))/((_)  /(_))_ (()\  )(_))(_))\  /((_)(()/(  )(_))(()\   ((_)) 
((/ __| ((_)  _| |(_))   (_)) __| ((_)((_)_ _)((_)(_))   )(_))((_)_  ((_)  _| |  
 | (__ / _ \/ _` |/ -_)    | (_ || '_|/ _` |\ V / / -_) | || |/ _` || '_|/ _` |  
  \___|\___/\__,_|\___|     \___||_|  \__,_| \_/  \___|  \_, |\__,_||_|  \__,_|  
                                                         |__/                  
when "3"
        print("What is the starting bound?  ")
        a = gets.to_f
        print("What is the ending bound?  ")
        b = gets.to_f
        print("What is the top function? (Exclude y = , use x as variable)  ")
        func1 = Calculus::Expression.new(gets.to_s)
        print("What is the bottom function? (Exclude y = , use x as variable)  ")
        func2 = Calculus::Expression.new(gets.to_s)
        total1 = 0
        total2 = 0
        i=a
        c = 0.001
        while i <= b
            func1["x"] = i
            total1 += func1.calculate*c
            i+=c
        end
        i=a
        while i <= b
            func2["x"] = i
            total2 += func2.calculate*c
            i+=c
        end
        puts "The area between the two curves is #{total1 - total2}"

  print("What is the starting bound?  ")
        a = gets.to_f
        print("What is the ending bound?  ")
        b = gets.to_f
        print("What is the function? (Exclude y = , use x as variable)  ")
        func = Calculus::Expression.new(gets.to_s)
        i = a
        total = 0
        while i<=b
            func["x"] = i
            total += func.calculate
            i+=1
        end
        puts "The area under the curve is #{total}"
=end
