require 'pry'

class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def all_pb
        ProjectBacker.all.select { |project_backer| project_backer.project == self }
    end

    def backers
        self.all_pb.collect { |pb| pb.backer }
    end
end