class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.text :meaning
      t.text :sound
      t.references :course, foreign_key: true

      t.timestamps null: false
    end
    add_index :words, [:course_id]
  end
end
