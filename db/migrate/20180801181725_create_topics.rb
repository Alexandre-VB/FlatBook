class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :text, :limit => 240
      t.text :description
      t.string :typologie
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
