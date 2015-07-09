class ResultSet < ActiveRecord::Base
  has_many :topics
  has_many :scriptures
  has_many :prayers
  has_many :media 
end
