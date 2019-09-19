require_relative "backer"
class Project

    attr_reader :title, :backers
    
    def initialize (title)
        @title = title
        @backers = []
    end

    def add_backer (person)
        if !@backers.include?(person)
            @backers << person
            person.back_project(self)
        end
    end
    
end