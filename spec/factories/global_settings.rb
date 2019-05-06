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

FactoryBot.define do
  factory :global_setting do
    single_list false
  end
end
