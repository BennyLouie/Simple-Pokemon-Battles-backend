class CaptureSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :pokemon
end
