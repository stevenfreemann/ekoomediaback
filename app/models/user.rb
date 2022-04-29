class User < ApplicationRecord

  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
    message: "No valido" }
  validates :age, inclusion: { in: 18..100, message: 'La edad debe estar entre 18 y 100' }
end
