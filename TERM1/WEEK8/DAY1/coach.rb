class Coach < Team_Member
    
    def initialize(name)
        super(name)
    end

    def to_s
        return "#{@name}"
    end
end