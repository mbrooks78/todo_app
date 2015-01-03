class List < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :account


  validates_presence_of :list_item
end
