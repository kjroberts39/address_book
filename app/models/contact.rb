class Contact < ApplicationRecord
belongs_to :user
validates_presence_of :name, :address, :email, :phone
scope :contacts_by, ->(user) { where(user_id: user.id) }

end
