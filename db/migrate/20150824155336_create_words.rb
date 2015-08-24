class CreateWords < ActiveRecord::Migration
  def change
  	create_table :words do |s|
  		s.string :text
  		s.string :sorted
  		s.timestamps null:false
  	end
  end
end
