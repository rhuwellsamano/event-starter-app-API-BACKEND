class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.integer :attendee_limit
      t.integer :total_cost

      t.timestamps
    end
  end
end
