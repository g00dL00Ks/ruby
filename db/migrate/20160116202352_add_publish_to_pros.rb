class AddPublishToPros < ActiveRecord::Migration
  def change
    add_column :pros, :review, :boolean
    add_column :pros, :publish, :boolean
  end
end
