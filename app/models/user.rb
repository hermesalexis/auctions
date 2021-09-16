# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  password   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  validates :password, :email, presence: true
end
