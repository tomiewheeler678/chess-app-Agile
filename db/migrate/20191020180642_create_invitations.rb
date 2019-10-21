class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.integer :game_id
      t.integer :player_id
      t.string :guest_player_email
      t.integer :invitation_id
      t.timestamps
    end
  end
end
