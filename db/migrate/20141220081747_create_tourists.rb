class CreateTourists < ActiveRecord::Migration
  def change
    create_table :tourists do |t|
      t.string :name
      t.text :description
      t.text :summary
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.integer :king_id
      t.integer :dynasty_id

      t.timestamps
    end
  end
end
