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

FactoryBot.define do
  factory :product_name do
    product_name { "TestName" }
    quantity { "TestQuantity" }
    measure { "TestMeasure" }
  end
end
