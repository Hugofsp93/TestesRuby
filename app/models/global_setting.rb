# == Schema Information
#
# Table name: global_settings
#
#  id          :integer          not null, primary key
#  single_list :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class GlobalSetting < ApplicationRecord
  has_paper_trail
  belongs_to :user

  def self.search(search, page)
    if search && search != ""
      paginate(:per_page => 20, :page => page).full_search(search)
    else
      paginate(:per_page => 20, :page => page)
    end
  end

  @@instance = GlobalSetting.create!(single_list: false)
  
  def self.instance
    @@instance
  end
end
