class CreateDupas < ActiveRecord::Migration
  def self.up
    create_table :dupas do |t|
      t.string :name
      t.text :memo
      t.decimal :number

      t.timestamps
    end
  end

  def self.down
    drop_table :dupas
  end
end
