class DropTableCategoriesProducts < ActiveRecord::Migration[5.2]
  def change
    drop_table :categories_products
  end
end
