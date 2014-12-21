class CreateDynasties < ActiveRecord::Migration
  def change
    create_table :dynasties do |t|
      t.string :name
      t.string :period
      t.text :background_summary
      t.string :photo

      t.timestamps
    end
  end
end
