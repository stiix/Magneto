class CreateChaines < ActiveRecord::Migration
  def change
    create_table :chaines do |t|
      t.string :nom
      t.integer :numero

      t.timestamps
    end
  end
end
