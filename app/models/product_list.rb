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

class ProductList < ApplicationRecord
  belongs_to :user
  has_many :product_names, dependent: :destroy
  
  include PgSearch
  has_paper_trail
  
  accepts_nested_attributes_for :product_names, reject_if: :all_blank, allow_destroy: true
  
  def to_s
    self.product_names
  end

  def self.search(search, page)
    if search && search != ""
      paginate(:per_page => 20, :page => page).full_search(search)
    else
      paginate(:per_page => 20, :page => page)
    end
  end

  @@instance = ProductList.create!(list_name: "Sua Lista")
  
  def self.instance
    @@instance
  end

  pg_search_scope :full_search,
    :against => [:list_name],
    :associated_against => { :product_names => [:product_name] },
    :using => {
      :tsearch => {:prefix => true},
      :dmetaphone => {},
      :trigram => {}
    },
    :ignoring => :accents
end
