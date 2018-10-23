class CreateRegistrationForm1s < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_form1s do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
