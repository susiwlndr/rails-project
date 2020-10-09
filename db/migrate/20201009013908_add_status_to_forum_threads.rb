class AddStatusToForumThreads < ActiveRecord::Migration[6.0]
  def change
    add_column :forum_threads, :status, :string
  end
end
