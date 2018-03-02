class ChangeDefaultValueForProgressInInitiatives < ActiveRecord::Migration[5.1]
  def change
    remove_column :initiatives, :progress, :integer
    add_column :initiatives, :progress, :integer, default:0
    remove_column :initiatives, :volunteersjoined, :integer
    add_column :initiatives, :volunteersjoined, :integer, default:0
  end
end
