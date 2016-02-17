class CreateActios < ActiveRecord::Migration
  def change
    create_table :actios do |t|
      t.string :nom_action

      t.timestamps null: false
    end
  end
end
