class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
    t.column(:name, :string)
    t.column(:category, :string)
    t.column(:male, :boolean)
    t.column(:female, :boolean)
    end
  end
end
