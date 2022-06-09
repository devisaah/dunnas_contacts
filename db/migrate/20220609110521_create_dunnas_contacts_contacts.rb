class CreateDunnasContactsContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :dunnas_contacts_contacts, id: DunnasContacts.active_uuid.present? ? DunnasContacts.active_uuid.to_sym : :integer do |t|
      t.references :contactable, polymorphic: true, null: false, type: DunnasContacts.active_uuid.present? ? DunnasContacts.active_uuid.to_sym : :integer
      t.string :name
      t.string :description
      t.string :type
      t.string :value

      t.timestamps
    end
  end
end
