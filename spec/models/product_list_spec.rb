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
  pending "add some examples to (or delete) #{__FILE__}"
end
