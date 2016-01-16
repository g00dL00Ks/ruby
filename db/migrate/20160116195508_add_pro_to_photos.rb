class AddProToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :pro_id, :integer
  end
end
