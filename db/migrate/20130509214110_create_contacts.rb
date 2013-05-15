class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :message
      t.string :phone
      t.string :company
      t.string :website

      t.timestamps
    end
  end
end
