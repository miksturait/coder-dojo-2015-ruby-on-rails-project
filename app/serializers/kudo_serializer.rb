class KudoSerializer < ActiveModel::Serializer
  attributes :id, :comment, :value
  has_one :coworker
end
