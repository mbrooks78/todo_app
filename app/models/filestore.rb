class Filestore < ActiveRecord::Base
  belongs_to :item
  mount_uploader :attachment, AttachmentUploader
  validates_presence_of :name
end
