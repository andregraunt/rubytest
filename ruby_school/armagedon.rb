# require 'rubygem'
# require 'sound'
# require 'play_mp3'
# require 'jimmy_jukebox'

# jukebox = JimmyJukebox.new
#  jukebox.play('key.mp3')
#dannie 1
require'io/console'
@file_path = File.expand_path('key.mp3')

# IO.console.puts `afplay #{@file_path}`

@people = 200
@zombies = 200

# pomosh funkziy -- 5 doljno bit

# 1

def lucky?
    rand(0..1) == 1
end

# 2
def boom
    diff = rand(1..100)
    if lucky?
        @zombies -= diff
        puts"#{diff} zombies dead"
      else
        @people -= diff
        puts"#{diff} people dead"
      end
    end

    #3
    # def random_city
    #     dice = rand(1, 5)
    #     case dice
    #     when 1 then "Tokyo"
    #     when 2 then "Madrid"
    #     when 3 then "Los-Vegas"
    #     when 4 then "Paris"
    #     else "Roma"
    #     end
    # end
    def random_city
        dice = rand(1..5)
        if dice == 1
            'Tokio'
        elsif dice == 2
            'Madrid'
        elsif dice == 3
            'Los-Vegas'
        elsif dice == 4
            'Paris'
        else  
            'Roma'
        end
    end
    # 4 random sleep

    def random_sleep
         sleep rand(0.9..2) 
    end

# 5
def stats
    
    if @people <= 0
        @people = 0
    elsif
     @zombies <= 0
        @zombies = 0
    end
    puts"#{@people} people left and #{@zombies} zombies left"

end

#
def event1
    puts "Rocket fired at #{random_city}"
    
    random_sleep
    boom
end

def event2
    puts " Air bomb attack at #{random_city}"
    
    random_sleep
    boom
end

def event3
    puts "A group of soldiers break through the enemy defenses in the city #{random_city}"
    
    random_sleep
    boom
end

#
def check_victory?
    # false
    if @zombies <= 0
        puts" Yes ! Victory ! O, my God!!"
        IO.console.puts `afplay #{@file_path}`
        exit
    else puts "Help me, help me please ......"
        
    end
        if @people <= 0 
            puts " END, This is END, NO People on Earth"
            IO.console.puts `afplay #{@file_path}`
            
         exit   
   
end
end

##

# # Main loop
# loop do
#     # Check if victory condition is met
#     if zombies <= 0
#         puts("Yes! Victory! O, my God!!")
#         break
#     elsif people <= 0
#         puts("END, This is END, NO People on Earth")
#         break
#     end

#     # Generate a random event
#     dice = rand(1, 3)
#     case dice
#     when 1 then event1
#     when 2 then event2
#     else event3
#     end

#     # Print stats
#     puts("#{people} people left and #{zombies} zombies left")

#     # Sleep for a random amount of time
#     random_sleep
# end

# def event1
#     puts "Rocket fired at #{random_city}"
#     random_sleep
#     boom
# end

# def event2
#     puts " Air bomb attack at #{random_city}"
#     random_sleep
#     boom
# end

# def event3
#     puts "A group of soldiers break through the enemy defenses in the city #{random_city}"
#     random_sleep
#     boom
# end

loop do
    

    # @jukebox.play('key.mp3')
    # @sound.play
    if check_victory?

        exit
     
end

dice = rand(1..3)
if dice == 1
    event1
    elsif dice == 2
        event2
    elsif dice == 3
    end
    stats
    random_sleep
end


# def stats
#     if @people <= 0
#         @people = 0
#     end
#     if @zombies <= 0
#         @zombies = 0
#     end
#     if @people <= 0
#         puts("0 people left and #{@zombies} zombies left")
#     else
#         puts("#{@people} people left and #{@zombies} zombies left")
#     end
# end
