class AddDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :level, :integer
    add_column :users, :trainer, :boolean
    add_column :users, :stylist, :boolean
    add_column :users, :dietician, :boolean
    add_column :users, :nutritionist, :boolean
    add_column :users, :health_coach, :boolean
    add_column :users, :career_coach, :boolean
    add_column :users, :life_coach, :boolean
  end
end
