class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :student, index: true
      t.string :skill_name

      t.timestamps
    end
  end
end
