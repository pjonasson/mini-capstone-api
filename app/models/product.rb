class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { maximum: 1000 }

  belongs_to :supplier
  has_many :images

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
