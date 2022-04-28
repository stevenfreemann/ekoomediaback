class User < ApplicationRecord

  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
    message: "No valido" }
end
