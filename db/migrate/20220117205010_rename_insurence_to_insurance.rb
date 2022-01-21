class RenameInsurenceToInsurance < ActiveRecord::Migration[6.1]
  def change
    rename_column :yachts, :insurence, :insurance
  end
end
