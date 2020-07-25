class AddDefaultValueToMaleAndFemale < ActiveRecord::Migration[5.2]
  def change
  change_column :names, :male, :boolean, default: false;
  change_column :names, :female, :boolean, default: false
  end
end
