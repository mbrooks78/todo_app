class User < ActiveRecord::Base
  has_many :lists, dependent: :destroy

  validates_presence_of :first_name, :last_name
  validates_format_of :first_name, :last_name, :with => /\A[a-zA-Z]+\z/
end
