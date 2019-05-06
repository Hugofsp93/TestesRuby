# == Schema Information
#
# Table name: product_lists
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_name  :string
#

require 'rails_helper'

RSpec.describe ProductList, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
