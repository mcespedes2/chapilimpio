class CreateTrashes < ActiveRecord::Migration[5.0]
  def change
    create_table :trashes do |t|
      t.string :latitud
      t.string :longitud
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
