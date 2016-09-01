class UserHasAndBelongsToManyRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles_users, id: false do |t|
      t.references :role, :user
    end
  end
end
