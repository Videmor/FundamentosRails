class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :age, null: false, default: 0
      t.boolean :active, default: true
      t.references :user_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
