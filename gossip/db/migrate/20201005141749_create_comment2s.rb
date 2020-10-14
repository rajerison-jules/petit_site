class CreateComment2s < ActiveRecord::Migration[6.0]
  def change
    create_table :comment2s do |t|
      t.string :content
      t.references :comment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
