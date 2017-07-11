class Product < ActiveRecord::Base
  belongs_to :user
  has_many :tags
  has_many :product_tags
  has_many :tags, through: :product_tags
end
