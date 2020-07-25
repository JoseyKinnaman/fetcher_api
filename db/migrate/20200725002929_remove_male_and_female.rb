class RemoveMaleAndFemale < ActiveRecord::Migration[5.2]
  def change
  remove_column :names, :female;
  remove_column :names, :male;
  end
end
