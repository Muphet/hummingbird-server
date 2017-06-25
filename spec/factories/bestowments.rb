# == Schema Information
#
# Table name: bestowments
#
#  id         :integer          not null, primary key
#  earned_at  :datetime
#  progress   :integer          default(0), not null
#  rank       :integer          default(0), indexed => [user_id, badge_id]
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  badge_id   :string           not null, indexed => [user_id, rank]
#  user_id    :integer          not null, indexed => [badge_id, rank]
#
# Indexes
#
#  index_bestowments_on_user_id_and_badge_id_and_rank  (user_id,badge_id,rank) UNIQUE
#
# Foreign Keys
#
#  fk_rails_5b7b2d53b8  (user_id => users.id)
#

FactoryGirl.define do
  factory :bestowment do
    badge_id 'LikingFeedPostsBadge'
    rank 1
    title 'Badge title'
    description 'Badge description'
    user
  end
end
