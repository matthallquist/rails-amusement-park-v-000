class ChangeNauseaRatingToNauseaForUsers < ActiveRecord::Migration
  def change
    rename_column :users, :nausea_rating, :nausea
  end
end
