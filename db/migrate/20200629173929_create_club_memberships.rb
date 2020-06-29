class CreateClubMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :club_memberships do |t|
      t.integer :user_id
      t.integer :club_id

      t.timestamps
    end
  end
end
