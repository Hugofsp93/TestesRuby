# == Schema Information
#
# Table name: product_lists
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_name  :string
#

FactoryBot.define do
  factory :product_list do
    product_name "MyString"
    quantity "MyString"
    measure "MyString"
  end
end
