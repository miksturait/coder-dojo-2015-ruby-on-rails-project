class CreateKudos < ActiveRecord::Migration
  def change
    create_table :kudos do |t|
      t.references :coworker, index: true, foreign_key: true
      t.string :comment
      t.integer :value

      t.timestamps
    end
  end
end
