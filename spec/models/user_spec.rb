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

require 'rails_helper'

RSpec.describe User, type: :model do
	context 'Validations' do
		# Presence
		it { is_expected.to validate_presence_of(:email) }
		it { is_expected.to validate_presence_of(:name) }
		# Length
		it { is_expected.to validate_length_of(:name).is_at_least(1).is_at_most(80) }
	end
	
	context 'Usuário válido' do
		let(:user) { build(:user) }
		it 'todas as informações OK' do
			expect(user).to be_valid
		end
	end

	context 'Usuário sem email' do
		let(:user) { build(:user, email: nil) }
		it 'teste deve ser inválido' do
			expect(user).not_to be_valid
		end  
	end
end
