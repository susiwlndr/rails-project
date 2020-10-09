class ChangeLevelToBeStringInUsers < ActiveRecord::Migration[6.0]
  def up
  	change_column :users, :level, :string
  end

  def down
  	change_column :users, :level, :integer
  end
end
