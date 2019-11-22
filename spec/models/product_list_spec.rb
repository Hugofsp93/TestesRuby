# == Schema Information
#
# Table name: product_lists
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_name  :string
#  user_id    :bigint(8)
#

require 'rails_helper'

RSpec.describe ProductList, type: :model do
  context 'Validations' do
		# Presence
    it { is_expected.to validate_presence_of(:list_name) }
    it { is_expected.to validate_presence_of(:user_id) }
    # Length
    it { is_expected.to validate_length_of(:list_name).is_at_least(1).is_at_most(60) }
  end
end
