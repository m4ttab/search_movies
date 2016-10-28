class CreateDirectors < ActiveRecord::Migration[5.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.text :description
      t.date :date_of_birth
      t.string :place_of_birth
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
