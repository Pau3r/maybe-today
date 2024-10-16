class AddCreatedByToPosts < ActiveRecord::Migration[7.2]
  def change
    add_reference :posts, :users, foreign_key: true
  end
end
