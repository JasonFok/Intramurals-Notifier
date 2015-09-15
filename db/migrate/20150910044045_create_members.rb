class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.references :team, index: true

      t.timestamps null: false
    end
  end
end
