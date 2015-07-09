class Topic < ActiveRecord::Base
  has_many :result_sets
  has_many :scriptures, through: :result_sets
  has_many :prayers, through: :result_sets
  has_many :media, through: :result_sets 
end
