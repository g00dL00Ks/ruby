class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.integer :length
      t.integer :price
      t.references :pro, index: true

      t.timestamps
    end
  end
end
