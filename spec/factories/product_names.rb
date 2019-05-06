# == Schema Information
#
# Table name: product_names
#
#  id              :integer          not null, primary key
#  product_name    :string
#  quantity        :string
#  measure         :string
#  product_list_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :product_name do
    
  end
end
