class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.date :date
      t.string :name
      t.string :section
      t.time :created
      t.string :status

      t.timestamps
    end
  end
end
