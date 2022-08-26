class CreateMen < ActiveRecord::Migration[5.2]
  def change
    create_table :men do |t|
      t.string :name
      t.integer :height

      t.timestamps
    end
  end
end
