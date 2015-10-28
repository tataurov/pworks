class AddAuthentificableToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.references :authenticable, :polymorphic => true, :index => true
    end
  end
end
