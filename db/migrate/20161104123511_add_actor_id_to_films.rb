class AddActorIdToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :actor_id, :integer
  end
end
