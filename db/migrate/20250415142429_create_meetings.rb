class CreateMeetings < ActiveRecord::Migration[8.0]
  def change
    create_table :meetings do |t|
      t.string :title
      t.datetime :scheduled_for

      t.timestamps
    end
  end
end
