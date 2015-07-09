class Medium < ActiveRecord::Base
  belongs_to :media_type
  belongs_to :topic
  has_many :result_sets
  has_many :topics, through: :result_sets
  has_many :prayers, through: :result_sets
  has_many :scriptures, through: :result_sets
end
