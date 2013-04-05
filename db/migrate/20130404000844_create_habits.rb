class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.references :user
      t.string :name
      t.text :description
      t.string :type_of_habit

      t.timestamps
    end
  end
end
