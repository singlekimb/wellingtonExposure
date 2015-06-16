class AddAdminToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :admin, :boolean, :default => false
  end

  def self.down
    remove_column :users, :admin
  end
  
  
  if current_user.try(:admin?)
    #do something 
  end
  
end