class RenameReview < ActiveRecord::Migration[7.1]
  def change
    rename_table :rewiews, :reviews
  end
end
