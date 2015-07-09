class ScriptureSerializer < ActiveModel::Serializer
  attributes :id, :book, :chapter, :verser, :text
end
