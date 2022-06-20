class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: false, force: true do |t|
      t.string :id, null: false
      t.string :name
      t.json  :P5
      t.json  :reward

      t.timestamps
    end
  end
end
