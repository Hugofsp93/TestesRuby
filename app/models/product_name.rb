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

class ProductName < ApplicationRecord
  belongs_to :product_list
  
  include PgSearch
  has_paper_trail

  def to_s
    product_name
  end

  def self.search(search, page)
    if search && search != ""
      paginate(:per_page => 20, :page => page).full_search(search)
    else
      paginate(:per_page => 20, :page => page)
    end
  end

  pg_search_scope :full_search,
    :against => [],
    :using => {
      :tsearch => {:prefix => true},
      :dmetaphone => {},
      :trigram => {}
    },
    :ignoring => :accents
end
