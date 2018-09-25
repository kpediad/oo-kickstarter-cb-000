class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer unless self.backer.include?(backer)
    backer.back_project(self)
  end

end
