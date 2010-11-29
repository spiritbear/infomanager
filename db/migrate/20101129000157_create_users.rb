class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :limit => 50
      t.string :crypted_password, :limit => 50
      t.string :password_salt
      t.string :persistence_token
      t.string :single_access_token
      t.string :perishable_token
      t.string :login_count
      t.string :current_login_ip, :limit => 50      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
