class CoworkerSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :avatar_url
end
