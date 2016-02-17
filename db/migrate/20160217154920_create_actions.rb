class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
