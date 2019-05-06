# == Schema Information
#
# Table name: comments
#
#  id                :bigint(8)        not null, primary key
#  commenteable_id   :integer
#  commenteable_type :string
#  user_id           :bigint(8)
#  text              :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Comment, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
