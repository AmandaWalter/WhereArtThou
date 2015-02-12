module UsersHelper

  def liked_artists(user)
    artists = []
    Work.all.each do |work|
      if user.likes?(work)
        artists << work.artist.user
      end
 		end
 		artists.uniq!
 	end
end