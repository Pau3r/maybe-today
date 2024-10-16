class ChangeNanmeCreatedByInPosts < ActiveRecord::Migration[7.2]
  def change
    rename_column :posts, :users_id, :user_id
  end
end
