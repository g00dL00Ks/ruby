class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :name
      t.integer :user_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
