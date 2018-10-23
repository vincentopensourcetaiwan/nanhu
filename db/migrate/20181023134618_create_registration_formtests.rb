class CreateRegistrationFormtests < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_formtests do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
