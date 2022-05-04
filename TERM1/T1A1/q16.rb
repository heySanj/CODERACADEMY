# Clear the terminal
system 'clear'

# Initialise the skills data
skillsHash = {  :python => 1,
                :ruby => 2,
                :bash => 4,
                :git => 8,
                :html => 16,
                :tdd => 32,
                :css => 64,
                :javascript => 128}

# Empty hash which will track the user's skills
userSkills = {}

# Skill scores will be added to this total
codingSkillScore = 0

# Welcome message
puts "================ ACME Corporation ================"
puts "Welcome! Do you have any of the following skills?"

# Print out the list of skills ACME is looking for
skillsHash.each do |skill, value|
    puts " - #{skill}"
end

puts "--------------------------------------------------\n\n"

# Endless loop that will allow the user to enter multiple skills
# Will end if the user enters 'done'
while true

    print "Please enter a skill, or 'done' if you are done: "
    skill = gets.chomp.downcase.to_sym #turn the string into symbol so it can be searched for in hashes

    # Terminate the loop if the user is done
    if skill == :done
        break
    end
    
    # Check to see if the input skill exists in the list of skills
    if skillsHash.key?(skill)

        # Check to see if the skill has already been recorded in the User's skills
        if userSkills.key?(skill)
            puts "\n*** We have already recorded #{skill.upcase}! ***"
        else
            # If not, add the skill to the User's skills list and add to the skill score.
            userSkills[skill] = skillsHash[skill]
            codingSkillScore += skillsHash[skill]
            puts "\n*** #{skill.upcase} recorded ***"
        end
    else
        # The skill is not recognised
        puts "\n*** Sorry, we don't recognise #{skill.upcase}! ***"
    end

end

# Display the skill score when the user is done entering skills.
puts "\n==================================================="
puts "Your Coding Skill Score is: #{codingSkillScore}"
puts "==================================================="

# Set a threshold score which users must beat to be considered for employment
thresholdScore = 200

# If the users score falls below the threshold, they will be recommended skills to learn
if codingSkillScore < thresholdScore

    # Recommend what skills the user should learn.
    puts "\nTo improve your score, we recommend learning these skills:\n\n"

    # Search through each skill and see if the user knows it.
    skillsHash.each do |skill, value|
        if !userSkills.key?(skill)
            # if not known by the user, print it out along with its point value.
            puts " - #{skill} will increase your score by #{value} points."
        end
    end

else
    # User is skilled enough
    puts "\nYou have all the skills we need!\n\n"
end


# Closing message
puts "\n--------------------------------------------------"
puts "\t We hope to work with you soon!"
puts "================ ACME Corporation ================\n\n"