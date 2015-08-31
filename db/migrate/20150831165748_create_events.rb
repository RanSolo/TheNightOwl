class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :artist
      t.datetime :eventDate
      t.string :links, :share, :array, :default => []

      t.timestamps null: false
    end
  end
end
