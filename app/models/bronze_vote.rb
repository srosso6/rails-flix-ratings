class BronzeVote < Vote

  def initialize(attributes)
    super(attributes)
    self.rating_value = 1
  end

end
