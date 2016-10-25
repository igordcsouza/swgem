module SWGEM
 class Films < Base 

 def by_episode(episode_number)
   self.all.map { |episode| (episode["episode_id"] == episode_number) ? episode : nil }.compact!.first
 end

 end
end
