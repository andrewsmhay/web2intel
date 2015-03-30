class Processing
  class << self
    def feedformat(feed, theurl, delim, user)
      feedformat_ary = Array.new
      #alexa = Array.new
      #newfeed = Array.new
      #x = 1
      #CSV.foreach('top-1m.csv') do |theloop|
      #	alexa << theloop[x]
      #end
      time = Time.new
      if feed == "flat_dom"
        puts Msg.time_head
        open(theurl)  {|f|
          f.each_line do |line|
            #puts line
            if /\#/.match(line)
              elsif /<pre>/.match(line)
              elsif /VX Vault last/.match(line)
              elsif /, /.match(line)
  						elsif /\/\/ /.match(line)
<<<<<<< HEAD
  						elsif /Site/.match(line)
  						elsif /./.match(line)
  							feedformat_ary << Regex.new_reg.match(line.gsub(/zone \"/, "").gsub(/http:\/\//, "")).to_s
  						end
  					end}
  					feedformat_ary = feedformat_ary.compact.uniq.sort
  					#puts feedformat_ary.inspect
#=begin
  					feedformat_ary.each do |secondline|
  						if secondline.empty?
  						else #puts secondline
  							#Investigate.investigate(secondline)
  							Sgraph.sgraph(secondline)
  						end
  					end

#=end
			elsif feed == "html"
				puts Msg.time_head
				page = Nokogiri::HTML(open(theurl))
				page.xpath(delim).each do |line|
					#puts line
					theline = line.to_s.gsub(/<td>/, "").gsub(/<span class="mono">/, '').gsub(/http:\/\//, "").gsub(/\<a href\=\"\/\?details\=/, "").gsub(/\<b\>/, "").gsub(/\<span\>/, "")
					if /\#/.match(theline)
  					elsif /last reported/.match(theline)
  					elsif /show_link/.match(theline)
  					elsif /\./.match(theline)		
						feedformat_ary << Regex.new_reg.match(theline).to_s
					end
				end
				feedformat_ary = feedformat_ary.compact.uniq.sort
  			
  					feedformat_ary.each do |secondline|
  						if secondline.empty?
  						else #puts secondline
  							#Investigate.investigate(secondline)
  							Sgraph.sgraph(secondline)
  						end
  					end
			elsif feed == "rss"
				zray = []
				if ARGV[1] != nil
					puts Msg.url_option
				else open(theurl) do |rss|
				  feed = RSS::Parser.parse(rss)
				  puts "#Title: #{feed.channel.description}"
				  puts Msg.time_head
				  feed.items.each do |item|
				  	page = Nokogiri::HTML(open(item.link))
				  	page.xpath(delim).each do |cell|
				  		if PublicSuffix.valid?("#{cell.text.strip}") && "#{cell.text.strip}" !~ /\.zip/ && "#{cell.text.strip}" !~ /\.google\.com/
				  			feedformat_ary << Regex.reg.match("#{cell.text.strip}").to_s
				  		end
				  	end
				  end
				end
				feedformat_ary = feedformat_ary.compact.uniq.sort
  			
  					feedformat_ary.each do |secondline|
  						if secondline.empty?
  						else #puts secondline
  							#Investigate.investigate(secondline)
  							Sgraph.sgraph(secondline)
  						end
  					end
				#puts zray.compact.uniq.sort.reject &:empty?
			end
			elsif feed == "xml"
			elsif feed == "twitter"
				if user != nil
					puts Msg.time_head
					Tweets.client.user_timeline(user).each do |t|
						#puts "#{t.text}"
						if Regex.reg_ip.match("#{t.text}") != nil
							puts Regex.reg_ip.match("#{t.text}")
						end
					end
					
				end
			else puts "Error, please try again..."
			end
		end
		
	end
end
=======
              elsif /Site/.match(line)
              elsif /./.match(line)
                feedformat_ary << Regex.new_reg.match(line.gsub(/zone \"/, "").gsub(/http:\/\//, "")).to_s
              end
            end}
            feedformat_ary = feedformat_ary.compact.uniq.sort
            #puts feedformat_ary.inspect

            feedformat_ary.each do |secondline|
              if secondline.empty?
              else puts secondline
                #Investigate.investigate(secondline)
                #Sgraph.sgraph(secondline)
                #end
              end
            end
            elsif feed == "flat_br"
              puts Msg.time_head
              open(theurl)  {|f|
                f.each_line do |line|
                  #puts line
                  feedformat_ary << line.force_encoding("ISO-8859-1").encode("UTF-8")
              end}
              feedformat_ary = feedformat_ary.compact.uniq.sort
              #puts feedformat_ary.inspect

              feedformat_ary.each do |secondline|
                if secondline.empty?
                else #puts secondline
                  #Investigate.investigate(secondline)
                  Sgraph.sgraph(secondline)
                end
              end
            elsif feed == "html"
              puts Msg.time_head
              page = Nokogiri::HTML(open(theurl))
              page.xpath(delim).each do |line|
                #puts line
                theline = line.to_s.gsub(/<td>/, "").gsub(/<span class="mono">/, '').gsub(/http:\/\//, "").gsub(/\<a href\=\"\/\?details\=/, "").gsub(/\<b\>/, "").gsub(/\<span\>/, "")
                if /\#/.match(theline)
                  elsif /last reported/.match(theline)
                  elsif /show_link/.match(theline)
                  elsif /\./.match(theline)
                    feedformat_ary << Regex.new_reg.match(theline).to_s
                  end
                end
                feedformat_ary = feedformat_ary.compact.uniq.sort

                feedformat_ary.each do |secondline|
                  if secondline.empty?
                  else #puts secondline
                    #Investigate.investigate(secondline)
                    Sgraph.sgraph(secondline)
                  end
                end
                elsif feed == "rss"
                  zray = []
                  if ARGV[1] != nil
                    puts Msg.url_option
                  else open(theurl) do |rss|
                      feed = RSS::Parser.parse(rss)
                      puts "#Title: #{feed.channel.description}"
                      puts Msg.time_head
                      feed.items.each do |item|
                        page = Nokogiri::HTML(open(item.link))
                        page.xpath(delim).each do |cell|
                          if PublicSuffix.valid?("#{cell.text.strip}") && "#{cell.text.strip}" !~ /\.zip/ && "#{cell.text.strip}" !~ /\.google\.com/
                            feedformat_ary << Regex.reg.match("#{cell.text.strip}").to_s
                          end
                        end
                      end
                    end
                    feedformat_ary = feedformat_ary.compact.uniq.sort

                    feedformat_ary.each do |secondline|
                      if secondline.empty?
                      else #puts secondline
                        #Investigate.investigate(secondline)
                        Sgraph.sgraph(secondline)
                      end
                    end
                  end
                  #puts zray.compact.uniq.sort.reject &:empty?
                elsif feed == "xml"
                elsif feed == "twitter"
                  if user != nil
                    puts Msg.time_head
                    Tweets.client.user_timeline(user).each do |t|
                      #puts "#{t.text}"
                      if Regex.reg_ip.match("#{t.text}") != nil
                        puts Regex.reg_ip.match("#{t.text}")
                      end
                    end

                  end
                else puts "Error, please try again..."
                end
              end

            end
          end
>>>>>>> origin/master
