class CreateFooters < ActiveRecord::Migration
  def change
    create_table :footers do |t|
      t.string :link
      t.string :icon
      t.integer :order
    end
  end
end
