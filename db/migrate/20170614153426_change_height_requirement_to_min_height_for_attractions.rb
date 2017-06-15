class ChangeHeightRequirementToMinHeightForAttractions < ActiveRecord::Migration
  def change
    rename_column :attractions, :height_requirement, :min_height
  end
end
