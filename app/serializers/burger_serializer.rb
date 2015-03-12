class BurgerSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients
end
