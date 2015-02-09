class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.date :starting_date
      t.time :starting_time
      t.date :ending_date
      t.time :ending_time
      t.text :location
      t.decimal :wage
      t.integer :num_minyawns
      t.text :description
      t.references :business, index: true

      t.timestamps
    end
  end
end
