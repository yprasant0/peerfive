class User < ApplicationRecord
  self.primary_key = :id
  before_create :set_id

  after_create :default_values
  validates :name, presence: true

  private

   def default_values
     if self.P5.nil?
       self.P5 = {balance: 100, history: []}
     end

     if self.reward.nil?
        self.reward = {balance: 0, history: []}
     end
     self.save!
   end

   def set_id
     self.id = loop do
       random_token = SecureRandom.hex(5)
       break random_token unless self.class.exists? random_token
     end
   end
  

end
