class CreateDashboard < ActiveRecord::Migration[6.1]
  def change
    create_table :dashboards do |t|

      t.integer :requested
      t.integer :loaded
      t.integer :not_loaded
      t.timestamps
    end
  end
end
