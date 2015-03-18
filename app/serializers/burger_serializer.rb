class BurgerSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :price, :image
end
