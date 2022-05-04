class League
   
    def initialize(name, sport, description, teams)
        @name = name
        @sport = sport
        @description = description
        @teams = teams
    end

    def to_s
        return "#{@name}: #{@description}"
    end

    def print_teams
        @teams.each do |team|
            team
        end
    end

    def print_ladder

        sorted_ladder = @teams.sort_by{|team| -team.wins}

        puts
        puts "TEAM \t\t | WINS | LOSSES"
        sorted_ladder.each do |team|            
            puts "------------------------------------------------------------"
            team.team_table_view
        end
        puts
        puts
    end
end