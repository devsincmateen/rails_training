class CreateOragans < ActiveRecord::Migration[5.2]
  def change
    create_table :oragans do |t|
      t.belongs_to :man, index: true
      t.string :name
      t.text :task
      
      t.timestamps
    end
  end
end
