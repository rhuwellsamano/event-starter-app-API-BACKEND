class AddEventIdToCommentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :user_id, :event_id
  end
end
