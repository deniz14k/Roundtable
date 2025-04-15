class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :content
      t.boolean :discussed
      t.references :meeting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
