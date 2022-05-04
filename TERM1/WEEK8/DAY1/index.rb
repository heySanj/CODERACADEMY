require "colorize"
require "tty-prompt"
require_relative("./data.rb")

# return of the method data is stored in league(variable)
   $league = data
   $prompt = TTY::Prompt.new
 
   def select_option
      answer = $prompt.select("What is your option?",["Ladder","Team's Info","Play game","Exit"])
      answer
   end

    # method to display the team's info when the option "Team's Info" is selected
    def select_team
        team = $prompt.select("Select your team",$league.print_teams)
        return team
    end

    def play_game(home, away)
        puts
        puts "--------------------------------------------------"
        puts "#{home} VS #{away}"
        puts "--------------------------------------------------"
        puts "played at: #{home.stadium}"
        puts "--------------------------------------------------"
        puts
        print "Enter score for #{home}: "
        score_home = gets.chomp.to_i
        print "Enter score for #{away}: "
        score_away = gets.chomp.to_i
        puts
        puts "--------------------------------------------------"
        puts
        if score_home > score_away
            home.win
            away.loss
        else
            home.loss
            away.win
        end
        puts
        puts "--------------------------------------------------"
    end

    option =""
    while option != "Exit"

    system "clear"
    puts
    puts "--------------------------------------------------"
    puts "Welcome to the #{$league}"
    puts "--------------------------------------------------"
    puts

    option = select_option
    case option 

    when "Ladder"
       
        $league.print_ladder

    when "Team's Info"
        puts
        team = select_team
        puts team.team_info

    when "Play game"
        home = select_team
        away = select_team

        play_game(home, away)

    else 
        puts
        puts " See you next time!"
        next
    end


    puts "Press enter to continue.."
    gets 
 end
