class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.integer :puntos

      t.belongs_to  :user, index: true
      t.belongs_to  :trash, index: true
      t.timestamps
    end
  end
end
