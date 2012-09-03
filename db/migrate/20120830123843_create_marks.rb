class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :exam
      t.integer :php
      t.integer :ruby
      t.integer :joomla
      t.integer :drupal
      t.integer :wordpress
      t.integer :total
      t.float :average_marks
      t.references :student

      t.timestamps
    end
    add_index :marks, :student_id
  end
end
