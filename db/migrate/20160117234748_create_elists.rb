class CreateElists < ActiveRecord::Migration
  def change
    create_table :elists do |t|
      t.string :name
      t.string :email
      t.string :city

      t.timestamps
    end
  end
end
