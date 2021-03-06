class CreatePlays < ActiveRecord::Migration
  def self.up
    create_table :plays do |t|
      t.string   :name 
      t.integer  :position
        
      t.integer  :playlist_id
      
      t.integer  :playable_id
      t.string   :playable_type 
           
      t.boolean  :is_request
      t.boolean  :is_bincut
      t.boolean  :is_live
      t.boolean  :is_marked
      
      t.integer  :duration
      t.datetime :created_at
    end
  end

  def self.down
    drop_table :plays
  end
end
