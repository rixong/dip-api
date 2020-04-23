class CreateRepairs < ActiveRecord::Migration[6.0]
  def change
    create_table :repairs do |t|
      t.string :category
      t.text :description
      t.date :submission_date
      t.boolean :priority
      t.text :followup
      t.integer :user_id
      t.integer :cabin_id
      t.integer :annual_report_id

      t.timestamps
    end
  end
end
