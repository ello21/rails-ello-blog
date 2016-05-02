require 'bcrypt'

class User < ActiveRecord::Base
  has_many :articles, foreign_key: "author_id"

  validates :first_name, :last_name, :username, :email, presence: true
  validates :email, :username, uniqueness: true
  validate :password_length

  def password
    @password ||= BCrypt::Password.new(self.hashed_password)
  end

  def password=(plain_text_password)
    @plain_text_password = plain_text_password

    @password = BCrypt::Password.create(@plain_text_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, plain_text_password)
    if user = User.find_by(email: email)
      if user && user.password == plain_text_password
        return user
      end
    end
    nil
  end

  def password_length
    if (@plain_text_password.length == 0)
      @errors.add(:password, "cannot be blank")
    elsif (@plain_text_password.length < 8)
      @errors.add(:password, "must be at least 8 characters long.")
    end
  end


end