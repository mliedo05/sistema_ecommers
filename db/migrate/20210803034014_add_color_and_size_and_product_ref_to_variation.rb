class AddColorAndSizeAndProductRefToVariation < ActiveRecord::Migration[5.2]
  def change
    add_reference :variations, :color, foreign_key: true
    add_reference :variations, :size, foreign_key: true
    add_reference :variations, :product, foreign_key: true
  end
end
