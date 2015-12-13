class RemoveDobsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :dob_date
  	remove_column :users, :dob_month
  	remove_column :users, :dob_year
  	add_column :users, :dob, :datetime
  end
end
