class StatusField < ActiveRecord::Migration
  def up
  	remove_column :students, :status
	add_column :students, :status, :boolean
  end

  def down
  end
end
