class AddUserIdToActors < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :user_id, :integer
  end
end
