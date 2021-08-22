class Project
  attr_accessor :title
  
  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    projects_backers = ProjectBacker.all.select {|elem| elem.project == self}
    projects_backers.map{|elem| elem.backer}
  end

end