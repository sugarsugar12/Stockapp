class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string          :title,          null: false
      t.integer         :stock,          null: false
      t.integer         :price,          null: false
      t.string          :memo
      t.references      :user,           null: false, foreign_key: true
      t.references      :category,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
