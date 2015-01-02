class List < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :user


  validates_presence_of :list_item
end
