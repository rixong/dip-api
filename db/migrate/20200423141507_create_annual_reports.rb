class CreateAnnualReports < ActiveRecord::Migration[6.0]
  def change
    create_table :annual_reports do |t|
      t.string :year
      t.boolean :current
      t.integer :budget
      t.integer :dues_split

      t.timestamps
    end
  end
end
