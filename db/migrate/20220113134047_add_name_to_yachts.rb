class AddNameToYachts < ActiveRecord::Migration[6.1]
  def change
    add_column :yachts, :name, :string
  end
end
