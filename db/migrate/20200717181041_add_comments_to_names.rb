class AddCommentsToNames < ActiveRecord::Migration[5.2]
  def change
  add_column(:names, :comment, :string)
  end
end
