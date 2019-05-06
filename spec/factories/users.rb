# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string
#  locale                 :string
#  is_active              :boolean
#  global_setting_id      :bigint(8)
#

FactoryBot.define do
	factory :user, aliases: [:user_admin_default] do
		# Personal Info
		# avatar {File.new("#{Rails.root}/app/assets/images/email_img.png")}
		name { Faker::Name.name }
		email { Faker::Internet.email  }
		password 'lklklklk'
		password_confirmation { password }
		# cnpj { Faker::CNPJ.numeric }
	end
end
