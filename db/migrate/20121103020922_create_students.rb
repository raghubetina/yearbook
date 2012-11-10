class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :avatar_url
      t.integer :section_id
      t.string :github
      t.string :twitter

      t.timestamps
    end
  end
end
