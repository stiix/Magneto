class ChangeDataTypeForDateTime < ActiveRecord::Migration
  def self.up
    change_table :programmes do |t|
      t.change :debut, :datetime
      t.change :fin, :datetime
    end
  end
 
  def self.down
    change_table :widgets do |t|
      t.change :debut, :date
      t.change :fin, :date
    end
  end
end
