class CreatePromos < ActiveRecord::Migration
  def self.up
    create_table :promos do |t|
      t.integer  :promotable_id
      t.string   :promotable_type
      
      t.string   :name   
      t.text     :body   
      t.string   :code   
      t.integer  :duration
                            
      t.timestamps
    end
  end

  def self.down
    drop_table :promos
  end
end
