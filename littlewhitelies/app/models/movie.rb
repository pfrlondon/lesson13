class Movie < ActiveRecord::Base
  attr_accessible :description, :release_date, :title

  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :festivals

  def average_score
  	score = 0
  	r = self.reviews.all

  	r.each do |review|
  		score += review.score
  	end

  	if r.size == 0
  		return 0
  	else
  		return score / r.size.to_f
  	end
  end


end
