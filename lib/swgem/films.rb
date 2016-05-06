module SWGEM
 class Films < Base 

 def by_episode(episode_number)
   self.all.map { |e| (e["episode_id"] == episode_number) ? e : nil }.compact!.first
 end

 end
end
