class CreateSplits < ActiveRecord::Migration
  def self.up
    create_table :splits do |t|
      t.belongs_to :user
      t.belongs_to :invoice
      t.float :amount
      t.text :reason      
      t.timestamps
    end
  end

  def self.down
    drop_table :splits
  end
end
