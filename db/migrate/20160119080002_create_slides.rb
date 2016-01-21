class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title, null: false
      t.string :text
      t.boolean :active, default: true
      t.integer :position
      t.timestamps
    end
  end
end
