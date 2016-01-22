class AddSlugToWorks < ActiveRecord::Migration
  def change
    add_column :works, :slug, :string, index: true
  end
end
