class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name, index: true
      t.text :text
    end
  end
end
