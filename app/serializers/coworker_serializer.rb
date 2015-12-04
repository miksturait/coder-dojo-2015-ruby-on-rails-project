class CoworkerSerializer < ActiveModel::Serializer
  attributes :id, :email
  attribute :first_name, key: 'first-name'
  attribute :last_name, key: 'last-name'
  attribute :avatar_url, key: 'avatar-url'

  has_many :kudos
end
