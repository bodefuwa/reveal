class PrayerPointSerializer < ActiveModel::Serializer
  attributes :id, :point
  has_one :prayer
end
