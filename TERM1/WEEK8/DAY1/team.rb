class Team

    require "colorize"

    attr_reader :stadium, :wins, :losses

    def initialize (name, city, stadium, uniform, players, coach, staff)
        @name = name
        @city = city
        @stadium = stadium
        @uniform = uniform
        @players = players
        @coach = coach
        @staff = staff
        @wins = 0
        @losses = 0
    end

    # default method for what to print when the class is puts
    def to_s
        return "#{@city} #{@name}"
    end

    def team_info

        puts "======================================================"
        puts "#{@city} #{@name}, #{@stadium}".green.on_black
        puts "======================================================"
        puts "Coach: #{@coach}  |  Uniform: #{@uniform}".red.on_black
        puts "------------------------------------------------------"
        puts "Players: ".yellow.on_black
        puts
        @players.each {|player| puts "#{player}".yellow.on_black}
        puts
        puts "------------------------------------------------------"
        puts "Staff: ".red.on_black
        puts
        @staff.each {|staff| puts "#{staff}".red.on_black}
        puts
        puts "======================================================"
    end

    def win
        puts "#{@city} #{@name} won the game!"
        @wins += 1
    end

    def loss
        puts "#{@city} #{@name} lost the game!"
        @losses += 1
    end

    def team_table_view
        puts "#{@city} #{@name}     | #{@wins}    | #{@losses}"
    end

end

