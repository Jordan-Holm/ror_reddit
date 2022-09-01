class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :body
      t.belongs_to :sub, null: false, foreign_key: true

      t.timestamps
    end
  end
end
