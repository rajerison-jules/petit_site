class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :firts_name
      t.string :last_name
      t.string :speciality
      t.integer :postal_code

      t.timestamps
    end
  end
end
