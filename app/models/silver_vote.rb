class SilverVote < Vote

  def initialize(attributes)
    super(attributes)
    self.rating_value = 3
  end

end
