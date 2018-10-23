class CreateRegistrationFormTestAbcs < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_form_test_abcs do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
