class AddRelationshipToInvitation < ActiveRecord::Migration[5.2]
  def change
    add_reference :invitations , :attended_event, references: :events
    add_foreign_key :invitations, :events , column: :attended_event_id

    add_reference :invitations , :attendee, references: :users
    add_foreign_key :invitations, :users , column: :attendee_id
  end
end
