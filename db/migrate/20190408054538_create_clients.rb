class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :owner_name
      t.string :phonetic_name
      t.string :pet_name
      t.string :pet_type
      t.time :reserve_time
      t.string :visit_purpose
      t.string :visit_case
    end
  end
end
