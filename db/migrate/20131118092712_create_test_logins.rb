class CreateTestLogins < ActiveRecord::Migration
  def change
    create_table :test_logins do |t|

      t.timestamps
    end
  end
end
