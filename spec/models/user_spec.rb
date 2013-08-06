# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  email             :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  zip               :string(255)
#  authorization_id  :integer
#  t_nickname        :string(255)
#  t_follow_count    :integer
#  twitter_json      :text
#  tweets_authorized :integer
#  user_type         :string(255)
#  t_access_token    :string(255)
#  t_access_secret   :string(255)
#  uid               :integer
#

describe User do

  it { should have_many :orders }
  it { should respond_to :email }

end
