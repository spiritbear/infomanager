class AddMembership < ActiveRecord::Migration
  def self.up
    create_table :groups_users,:id => false, :force => true do |t|
      t.integer :user_id
      t.integer :group_id      
    end
    add_index(:groups_users,:user_id)
    add_index(:groups_users,:group_id)
  end

  def self.down
    drop_table :groups_users
  end
end
