class AddCommentsToNames < ActiveRecord::Migration[5.2]
  def change
  add_column(:names, :comments, :string)
  end
end
