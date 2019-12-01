# == Schema Information
#
# Table name: product_names
#
#  id              :bigint(8)        not null, primary key
#  product_name    :string
#  quantity        :string
#  measure         :string
#  product_list_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe ProductName, type: :model do
  
  context 'Validations' do
		# Presence
    it { is_expected.to validate_presence_of(:product_name) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:measure) }
    # Length
    it { is_expected.to validate_length_of(:product_name).is_at_least(1).is_at_most(50) }
  end
end
