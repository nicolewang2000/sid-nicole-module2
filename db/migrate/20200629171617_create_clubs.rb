class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :description
      t.integer :leader_id
      t.integer :book_id

      t.timestamps
    end
  end
end
