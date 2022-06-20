class User < ApplicationRecord
  self.primary_key = :id
  before_create :set_id




  
   private

   def set_id
      self.id = loop do
        random_token = SecureRandom.hex(5)
        break random_token unless self.class.exists? random_token
      end
   end
  

end
