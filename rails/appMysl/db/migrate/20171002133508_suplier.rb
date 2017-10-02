class Suplier < ActiveRecord::Migration[5.1]
  def change
    
    create_table :suppliers do |t|
      t.string :name
      t.timestamps
  end
end
