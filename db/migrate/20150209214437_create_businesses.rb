class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.references :user, index: true
      t.string :name
      t.text :address
      t.string :website
      t.text :about

      t.timestamps
    end
  end
end
