class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.text         :kinds,     null: false
      t.timestamps
    end
  end
end
