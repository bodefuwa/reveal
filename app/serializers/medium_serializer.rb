class MediumSerializer < ActiveModel::Serializer
  attributes :id, :link
  has_one :media_type
  has_one :topic
end
