class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :name
      t.string :email, null: false
      t.string :avatar
      t.boolean :admin, default: false
      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end