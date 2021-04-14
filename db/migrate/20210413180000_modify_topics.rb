class ModifyTopics < ActiveRecord::Migration[6.0]
    def change
      add_index :topics, :alias, unique: true
      Topic.create :alias => "uachamp", :title => "Ukrainian Championship"
      Topic.create :alias =>"skchamp", :title => "Slovakian Championship"
      Topic.create :alias => "bikes", :title => "New models release"
      Topic.create :alias => "points", :title => "Points"
      Topic.create :alias => "tracks", :title => "Tracks"
    end
end