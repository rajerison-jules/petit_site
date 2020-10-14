class CreatePotins < ActiveRecord::Migration[6.0]
  def change
    create_table :potins do |t|
      t.string :titles
      t.integer :postal_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
