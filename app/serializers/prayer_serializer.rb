class PrayerSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :topic
end
