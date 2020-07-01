class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :club_id
      t.string :integer
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
