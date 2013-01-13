class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :title    , :null => false
      t.text :description
      t.references :point_of_interest,   :null => false

      t.timestamps
    end
    add_index :opinions, :point_of_interest_id
  end
end
