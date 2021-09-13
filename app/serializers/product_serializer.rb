class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :tax, :total, :supplier_id, :images, :quantity

  belongs_to :supplier
  has_many :images
  has_many :categories
end
