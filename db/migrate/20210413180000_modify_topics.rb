class ModifyTopics < ActiveRecord::Migration[6.0]
    def change
      add_index :topics, :alias, unique: true
      Topic.create :alias => "uachamp", :title => "Ukrainian Championship"
      Topic.create :alias =>"skchamp", :title => "Slovakian Championship"
      Topic.create :alias => "bikes", :title => "New models release"
      Topic.create :alias => "points", :title => "Points"
      Topic.create :alias => "tracks", :title => "Tracks"
      Topic.create :alias => "cats", :title => "Котики"
      Topic.create :alias =>"dogs", :title => "Собачки"
      Topic.create :alias => "hamsters", :title => "Хомячки"
      Topic.create :alias => "rabbits", :title => "Кролики"
      Topic.create :alias => "turtles", :title => "Черепашки"
    end
end