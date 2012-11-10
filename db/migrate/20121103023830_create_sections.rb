class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.string :location
      t.string :times
      t.string :quarter

      t.timestamps
    end
  end
end
