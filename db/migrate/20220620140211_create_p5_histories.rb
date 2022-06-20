class CreateP5Histories < ActiveRecord::Migration[5.2]
  def change
    create_table :p5_histories do |t|
      t.string :amount
      t.string :given_to
      
      t.timestamps
    end
  end
end
