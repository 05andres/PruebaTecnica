class CreateVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :variants do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.belongs_to :product
      t.timestamps
    end
  end
end
