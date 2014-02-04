class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :discount, index: true
      t.string :name

      t.timestamps
    end

    add_index :categories, :name, unique: true
  end
end
