class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :college
      t.string :major
      t.string :linkedin
      t.string :facebook

      t.timestamps
    end
  end
end
