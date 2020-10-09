class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def all_pb
        ProjectBacker.all.select { |project_backer| project_backer.backer == self }
    end

    def backed_projects
        self.all_pb.collect { |pb| pb.project }
    end
end