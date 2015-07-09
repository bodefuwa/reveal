class Prayer < ActiveRecord::Base
  belongs_to :topic
  has_many :result_sets
  has_many :topics, through: :result_sets
  has_many :scriptures, through: :result_sets
  has_many :media, through: :result_sets
end
