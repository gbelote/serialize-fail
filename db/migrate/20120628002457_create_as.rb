class CreateAs < ActiveRecord::Migration
  def change
    create_table :as do |t|
      t.text :data

      t.timestamps
    end
  end
end
