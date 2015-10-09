class RemoveAgeToUser < ActiveRecord::Migration
  def up
    remove_column :users, :age
  end

  def down
    add_column :users, :age, :integer, default: 0
  end
end
