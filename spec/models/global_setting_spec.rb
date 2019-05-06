# == Schema Information
#
# Table name: global_settings
#
#  id          :integer          not null, primary key
#  single_list :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe GlobalSetting, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
