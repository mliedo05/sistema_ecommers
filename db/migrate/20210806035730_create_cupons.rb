class CreateCupons < ActiveRecord::Migration[5.2]
  def change
    create_table :cupons do |t|
      t.string :type
      t.string :code
      t.integer :amount
      t.string :discount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
