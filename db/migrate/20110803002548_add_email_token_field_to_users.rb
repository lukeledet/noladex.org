class AddEmailTokenFieldToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :email_token, :string

    add_index :users, :email_token, :unique => true
  end

  def self.down
    remove_column :users, :email_token
  end
end
