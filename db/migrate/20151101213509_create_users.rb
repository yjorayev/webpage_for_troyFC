class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :email
    	t.integer :age
    	t.string :nationality
    	t.string :major
    	t.string :classification
    	t.string :picture
    	t.timestamps
    end
  end
end
