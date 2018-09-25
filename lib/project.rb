class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer unless self.backers.include?(backer)
    backer.back_project(self) unless self.backers.include?(backer)
  end

end
