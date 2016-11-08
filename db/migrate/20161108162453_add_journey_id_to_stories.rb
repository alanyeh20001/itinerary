class AddJourneyIdToStories < ActiveRecord::Migration
  def up
    add_column :stories, :journey_id, :integer
  end

  def down
    remove_column :stories, :journey_id
  end
end
