class CreateCounts < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.references :habit

      t.timestamps
    end
  end
end
