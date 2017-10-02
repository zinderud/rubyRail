class ExampleMigration < ActiveRecord::Migration[5.1]
  def up
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end
    create_table :books do |t|
      t.belongs_to :authors , index:true
      t.datetime :published_at
      t.timestamps
    end
  end
end
