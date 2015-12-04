class CreateCoworkers < ActiveRecord::Migration
  def change
    create_table :coworkers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :avatar_url

      t.timestamps
    end
  end
end
