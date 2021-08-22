class Backer
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects_backers = ProjectBacker.all.select {|elem| elem.backer == self}
    projects_backers.map{|elem| elem.project}
  end

end