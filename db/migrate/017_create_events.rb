class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string   :name    
      t.string   :type    
      t.string   :location
      t.text     :description
      t.string   :phone    
      t.string   :url      
      t.datetime :starts_at
      t.datetime :ends_at  
                             
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :events
  end
end
