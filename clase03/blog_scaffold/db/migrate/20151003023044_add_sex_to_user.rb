class AddSexToUser < ActiveRecord::Migration
  def change
    add_column :users, :sex, :string, default: 'M'
    add_column :users, :username, :string
  end
end
