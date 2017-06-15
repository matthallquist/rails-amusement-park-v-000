class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :tickets
      t.integer :height_requirement
      t.integer :nausea_rating
    end
  end
end
