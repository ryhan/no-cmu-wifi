class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.string :andrew_id
      t.string :location
      t.text :personal

      t.timestamps
    end
  end
end
