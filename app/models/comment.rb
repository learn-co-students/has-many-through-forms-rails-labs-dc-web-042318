class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :user_rejectable?
  private

 def user_rejectable?(att)
  att['username'].blank? && new_record?
 end
end