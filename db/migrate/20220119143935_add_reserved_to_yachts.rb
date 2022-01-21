class AddReservedToYachts < ActiveRecord::Migration[6.1]
  def change
    add_column :yachts, :reserved, :boolean, default: false
  end
end
