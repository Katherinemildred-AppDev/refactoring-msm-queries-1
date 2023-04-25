# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
def actor
  a_id=self.actor_id
  matching_actors=Astor.where({:id=>a_id})
  return matching_actors
end

end
