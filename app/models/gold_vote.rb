class GoldVote < Vote

  def initialize(attributes)
    super(attributes)
    self.rating_value = 5
  end

end
