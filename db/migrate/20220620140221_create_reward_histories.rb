class CreateRewardHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :reward_histories do |t|
      t.string :amount
      t.string :given_by
      
      t.timestamps
    end
  end
end
