# == Schema Information
#
# Table name: global_settings
#
#  id          :bigint(8)        not null, primary key
#  single_list :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#

require 'rails_helper'

RSpec.describe GlobalSetting, type: :model do
  context 'Validations' do
    it "have no validations in this model" do
    end
  end
end
