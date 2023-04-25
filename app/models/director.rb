# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
def filmography

  my_id = self.id

  matching_movies = Movie.where({ :director_id => my_id }) #my_id here already accounted for the "self", which fills in for whatever we come across. 
  
  return matching_movies

end

end
