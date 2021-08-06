class Category < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :categories
  belongs_to :category, optional: true


  scope :sub_categories, -> { where.not(:category_id => nil)}
  scope :categories, -> { where(:category_id => nil)}

end
