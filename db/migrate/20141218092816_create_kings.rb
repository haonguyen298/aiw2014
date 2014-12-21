class CreateKings < ActiveRecord::Migration
  def change
    create_table :kings do |t|
      t.string :name
      t.datetime :dob
      t.datetime :dod
      t.text :summary
      t.string :photo
      t.integer :dynasty_id

      t.timestamps
    end
  end
end
