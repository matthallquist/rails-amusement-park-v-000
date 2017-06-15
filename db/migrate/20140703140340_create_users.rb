class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :height
      t.integer :nausea_rating
      t.integer :happiness
      t.integer :tickets
      t.boolean :admin, default: false
    end
  end
end
