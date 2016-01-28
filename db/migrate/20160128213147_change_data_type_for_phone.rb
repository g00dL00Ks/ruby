class ChangeDataTypeForPhone < ActiveRecord::Migration

  def self.up
    change_table :pros do |t|
      t.change :phone, :string
    end
  end
  def self.down
    change_table :pros do |t|
      t.change :phone, :string
    end
  end
end


