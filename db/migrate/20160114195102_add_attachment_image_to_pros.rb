class AddAttachmentImageToPros < ActiveRecord::Migration
  def self.up
    change_table :pros do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pros, :image
  end
end
