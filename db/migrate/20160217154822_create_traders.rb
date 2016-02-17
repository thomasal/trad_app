class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
