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

FactoryBot.define do
  factory :product_list do
    list_name { "TestListName" }
    user_id { 1 }
  end
end
