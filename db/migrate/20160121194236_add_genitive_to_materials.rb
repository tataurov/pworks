class AddGenitiveToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :name_genitive, :string
  end
end
