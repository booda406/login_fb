class AddProfileToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :sex, :string
  	add_column :users, :dob, :date
  end
end
