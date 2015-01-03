class Item < ActiveRecord::Base
  has_many :filestores, dependent: :destroy
  belongs_to :list

  validates_presence_of :item_entry




end
