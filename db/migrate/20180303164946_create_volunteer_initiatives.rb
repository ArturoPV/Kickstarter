class CreateVolunteerInitiatives < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteer_initiatives do |t|
      t.integer :user_id
      t.integer :initiative_id
      t.timestamps
    end
  end
end
