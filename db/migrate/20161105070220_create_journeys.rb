class CreateJourneys < ActiveRecord::Migration
  def up
    create_table :journeys do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end

  def down
    drop_table :journeys
  end
end
