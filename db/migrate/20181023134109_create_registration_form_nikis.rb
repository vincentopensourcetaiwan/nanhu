class CreateRegistrationFormNikis < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_form_nikis do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
