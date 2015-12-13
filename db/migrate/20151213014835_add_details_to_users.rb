class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position, :string
    add_column :users, :number, :integer
    add_column :users, :dob_date, :integer
    add_column :users, :dob_month, :string
    add_column :users, :dob_year, :integer
  end
end
