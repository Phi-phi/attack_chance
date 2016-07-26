class AddGameIdToPanel < ActiveRecord::Migration[5.0]
  def change
    add_column :panels, :game_id, :integer, null: false
  end
end
