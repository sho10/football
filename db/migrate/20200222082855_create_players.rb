class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|

      t.string :position
      t.string :height
      t.string :weight
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
