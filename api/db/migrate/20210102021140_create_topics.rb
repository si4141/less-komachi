class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title, :null => false, :limit => 30
      t.text :body, :null => false, :limit => 800
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
