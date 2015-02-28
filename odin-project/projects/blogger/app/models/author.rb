class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password

    validates :username, presence: true, uniqueness: true, length: { maximum: 11 }
    validates :password, length: { minimum: 4 }
end
