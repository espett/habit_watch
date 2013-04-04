class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.references :user
      t.string :name

      t.timestamps
    end
  end
end
