class AddUserIdToDirectors < ActiveRecord::Migration[5.0]
  def change
    add_column :directors, :user_id, :integer
  end
end
