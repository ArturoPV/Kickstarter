class AddVolunteersToInitatives < ActiveRecord::Migration[5.1]
  def change
    add_column :initiatives, :volunteersjoined, :integer
  end
end
