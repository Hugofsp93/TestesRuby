# == Schema Information
#
# Table name: global_settings
#
#  id          :integer          not null, primary key
#  single_list :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :global_setting do
    single_list false
  end
end
