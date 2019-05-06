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
  pending "add some examples to (or delete) #{__FILE__}"
end
