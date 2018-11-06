class Show < ActiveRecord::Base  

  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.most_popular_show
    Show.all.find_by(rating: self.highest_rating)
  end

  def self.lowest_rating
    Show.all.minimum(:rating)
  end

  def self.least_popular_show
    Show.all.find_by(rating: self.lowest_rating)
  end

  def self.ratings_sum
    Show.all.sum(:rating)
  end

  def self.popular_shows
    Show.all.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end

end