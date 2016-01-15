class AddImageDataToPros < ActiveRecord::Migration
  def change
    add_column :pros, :image_file_name, :string
    add_column :pros, :image_content_type, :string
    add_column :pros, :image_file_size, :integer
    add_column :pros, :image_updated_at, :datetime
  end
end
