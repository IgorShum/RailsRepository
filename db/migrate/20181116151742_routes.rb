class Routes < ActiveRecord::Migration[5.2]
  def change
  	create_table :routes do |t|
  		t.string :name
  		t.timestamps null: false
  end
end
