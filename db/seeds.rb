Song.destroy_all
 
soundcloud_data = []
soundcloud_data << OpenStruct.new(title: 'Deep Electronics #71 - Faidel', track: '189683856')
soundcloud_data << OpenStruct.new(title: 'SP 109 Deepmeister', track: '176212562')
soundcloud_data << OpenStruct.new(title: 'Casiokids - Det Haster!', track: '24255336')
soundcloud_data << OpenStruct.new(title: 'Fetty Wap - Trap Queen', track: '155798913')
soundcloud_data << OpenStruct.new(title: 'Jon Hopkins - Form by Firelight', track: '170000664')
soundcloud_data << OpenStruct.new(title: 'Major Lazer & DJ Snake - Lean On (feat. MØ)', track: '193781466')
soundcloud_data << OpenStruct.new(title: 'Zero 7 vs Mos Def - Umi Says', track: '21694756')
 
def soundcloud_html(data)
  html = <<-HTML
    <iframe
      width="100%" height="300" scrolling="no" frameborder="no"
      src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/#{data.track}&amp;default_height=200&amp;auto_play=false&amp;hide_related=true&amp;show_comments=false&amp;show_user=true&amp;show_reposts=false&amp;visual=true">
    </iframe>
  HTML
  html.strip.gsub(/\s+/, ' ')
end
 
soundcloud_data.each do |data|
  puts "Creating #{data.title}"
  song = Song.create!(
    title: data.title,
    embed_code: soundcloud_html(data)
  )
end