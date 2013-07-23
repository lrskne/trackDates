class CreateMydates < ActiveRecord::Migration
  def change
    create_table :mydates do |t|
      t.string :entry
      t.date :date

      t.timestamps
    end
  end
end
