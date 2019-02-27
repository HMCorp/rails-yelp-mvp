class RemoveIntegerFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :integer
  end
end
