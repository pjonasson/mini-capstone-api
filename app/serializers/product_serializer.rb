class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :supplier_id, :images
end
