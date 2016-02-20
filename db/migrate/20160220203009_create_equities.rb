class CreateEquities < ActiveRecord::Migration
  def change
    create_table :equities do |t|
      t.string :nom_action

      t.timestamps null: false
    end
  end
end
