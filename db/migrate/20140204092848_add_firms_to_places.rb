class AddFirmsToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :firm, index: true
  end
end
