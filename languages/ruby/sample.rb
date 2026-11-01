module Sample
  VALUES = [3, 1, 4, 1, 5, 9].freeze
  def self.summary
    { count: VALUES.length, total: VALUES.sum }
  end
end
puts Sample.summary
