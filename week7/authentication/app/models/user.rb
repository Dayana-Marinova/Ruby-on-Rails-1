class User < ActiveRecord::Base
  has_secure_password, validates = false

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  #trqbva da se dobavi pri migraciite password_digest
end