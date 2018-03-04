class AddUserIdToInitiatives < ActiveRecord::Migration[5.1]
  def change
    add_column :initiatives, :user_id, :integer
  end
end
