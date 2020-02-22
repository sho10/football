class AddNameToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :category, :string
  end
end
