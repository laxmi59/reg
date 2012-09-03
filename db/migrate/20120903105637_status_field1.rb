class StatusField1 < ActiveRecord::Migration
  def up
  	remove_column :students, :status
	add_column :students, :status, :boolean, :default => false
  end

  def down
  end
end
