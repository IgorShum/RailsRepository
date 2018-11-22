class Routes < ActiveRecord::Migration[5.2]
  def change
  	  	drop_table :routes
  	create_table :routes do |t|
  		t.string :name
  		t.timestamps null: false
  	end
  end

  def up
  	drop_table :routes
  	create_table :routes do |t|
  		t.string :name
  		t.timestamps null: false
  end

  end
end
