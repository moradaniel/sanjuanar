class ModifyDescriptionOnOpinion < ActiveRecord::Migration
  def up
    change_column :opinions, :description, :string, :null => false
  end

  def down
    change_column :opinions, :description, :string, :null => true
  end
end
