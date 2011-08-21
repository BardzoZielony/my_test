class CreateDupadupas < ActiveRecord::Migration
  def self.up
    create_table :dupadupas do |t|
      t.string :title
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :dupadupas
  end
end
