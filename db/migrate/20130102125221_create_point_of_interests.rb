class CreatePointOfInterests < ActiveRecord::Migration
  def change
    create_table :point_of_interests do |t|
      t.string :name ,  :null => false

      t.timestamps
    end
  end
end
