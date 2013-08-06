# == Schema Information
#
# Table name: authorizations
#
#  id         :integer          not null, primary key
#  provider   :string(255)
#  uid        :integer
#  user       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Authorization < ActiveRecord::Base
	attr_accessible :provider, :uid, :user

  belongs_to :user
  validates :provider, :uid, :presence => true

end
