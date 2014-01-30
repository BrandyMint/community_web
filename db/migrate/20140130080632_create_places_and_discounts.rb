class CreatePlacesAndDiscounts < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :position
      t.references :city, index: true

      t.timestamps
    end

    create_table :discounts do |t|
      t.string :text

      t.timestamps
    end

    create_table :discounts_places do |t|
      t.references :place, index: true
      t.references :discount, index: true
    end
  end
end