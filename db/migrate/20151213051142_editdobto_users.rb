class EditdobtoUsers < ActiveRecord::Migration
  def change
  	change_column :users, :dob,  :date
  end
end
