class CreateFirms < ActiveRecord::Migration
  def change
    create_table :firms do |t|
      t.references :place, index: true
      t.string :name

      t.timestamps
    end
  end
end
