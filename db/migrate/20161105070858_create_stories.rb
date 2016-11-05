class CreateStories < ActiveRecord::Migration
  def up
    create_table :stories do |t|
      t.text :content

      t.timestamps null: false
    end
  end

  def down
    drop_table :stories
  end
end
