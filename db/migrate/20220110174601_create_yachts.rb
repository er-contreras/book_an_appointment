class CreateYachts < ActiveRecord::Migration[6.1]
  def change
    create_table :yachts do |t|
      t.integer :price_per_hour
      t.string :description
      t.integer :max_time
      t.integer :insurence
      t.integer :extra_person_fee
      t.timestamps
    end
  end
end
