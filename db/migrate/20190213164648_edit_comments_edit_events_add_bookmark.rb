class EditCommentsEditEventsAddBookmark < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :comment, :content
    add_column :events, :image, :string
    add_column :events, :location, :string
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :event_id
    end
  end
end
