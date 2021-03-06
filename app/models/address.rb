class Address < ActiveRecord::Base
  belongs_to :city
  belongs_to :state

  belongs_to :user
  has_one :shipping_user, class_name: "User", foreign_key: :shipping_id
  has_one :billing_user, class_name: "User", foreign_key: :billing_id


  # ------------------- Validations ---------------------

  validates :street_address, :zip_code, :state_id, :user_id,
            :presence => true



  # before_create :check_city

  # ------------------- Methods ---------------------
  

end
