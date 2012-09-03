class FixColumnName < ActiveRecord::Migration
  def up
	rename_column :students, :fname, :first_name
	rename_column :students, :lname, :last_name
	add_column :students, :status, :string
  end

  def down
  end
end
