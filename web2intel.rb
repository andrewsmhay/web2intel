#!/usr/bin/env ruby
require './lib/w2i_includes'

require './lib/local_creds'

zray = []
result = []
commands = []
ARGV.each {|arg| commands << arg}

### HTML file sources

if ARGV[0] =~ Regex.cysitt
  puts "#Title: CYBERsitter Malicious Web Site Filter - Top 100"
  Processing.feedformat('html', Urls.cybersitter, '//b', '')

elsif ARGV[0] =~ Regex.qmal
  puts "#Title: Quttera Malicious Domains Database"
  Processing.feedformat('html', Urls.quttera_mal_url, "//tr[1]/td[2]", '')

elsif ARGV[0] =~ Regex.qsus
  puts "#Title: Quttera Suspicious Domains Database"
  Processing.feedformat('html', Urls.quttera_sus_url, "//tr[1]/td[2]", '')

elsif ARGV[0] =~ Regex.qpot
  puts "#Title: Quttera Potentially Suspicious Domains Database"
  Processing.feedformat('html', Urls.quttera_potsus_url, "//tr[1]/td[2]", '')

elsif ARGV[0] =~ Regex.sucuri_iframe
  puts "#Title: Sucuri Research Labs Hidden iframes List"
  Processing.feedformat('html', Urls.sucuri_url, "//table[1]//tr//td[3]//a", '')

elsif ARGV[0] =~ Regex.sucuri_redirect
  puts "#Title: Sucuri Research Labs Conditional Redirect List"
  Processing.feedformat('html', Urls.sucuri_url, "//table[2]//tr//td[3]//a", '')

elsif ARGV[0] =~ Regex.sucuri_js
  puts "#Title: Sucuri Research Labs Encoded JavaScript List"
  Processing.feedformat('html', Urls.sucuri_url, "//table[3]//tr//td[3]//a", '')

elsif ARGV[0] =~ Regex.webins
  puts "#Title: Web Inspector Unsafe Site List"
  Processing.feedformat('html', Urls.webins_url, "//table[1]//tr//td//span", '')

elsif ARGV[0] =~ Regex.malwr
  puts "#Title: Malwr.com Recently Extracted Domains List"
  Processing.feedformat('html', Urls.malwr, "//table[1]//tr//td//span[1]", '')

  ### Flat file sources

elsif ARGV[0] =~ Regex.et_ip
  puts "#Title: Emerging Threats List of Compromised IPs"
  Processing.feedformat('flat_dom', Urls.et_ip, '', '')

elsif ARGV[0] =~ Regex.vxvault
  puts "#Title: VX Vault Last 100 Links"
  Processing.feedformat('flat_dom', Urls.vxvault, '', '')

elsif ARGV[0] =~ Regex.malc0de
  puts "#Title: Malc0de Blocklist"
  Processing.feedformat('flat_dom', Urls.malc0de, '', '')

elsif ARGV[0] =~ Regex.mwdoms
  puts "#Title: DNS-BH – Malware Domain Blocklist"
  Processing.feedformat('flat_dom', Urls.mwdoms, '', '')

elsif ARGV[0] =~ Regex.isc_low
  puts "#Title: SANS Internet Storm Center LOW Confidence Blocklist"
  Processing.feedformat('flat_dom', Urls.isc_low_url, '', '')

elsif ARGV[0] =~ Regex.isc_med
  puts "#Title: SANS Internet Storm Center MEDIUM Confidence Blocklist"
  Processing.feedformat('flat_dom', Urls.isc_med_url, '', '')

elsif ARGV[0] =~ Regex.isc_high
  puts "#Title: SANS Internet Storm Center HIGH Confidence Blocklist"
  Processing.feedformat('flat_dom', Urls.isc_high_url, '', '')

elsif ARGV[0] =~ Regex.goz
  puts "#Title: Gameover Zeus Domain List"
  Processing.feedformat('flat_dom', Urls.goz, '', '')

elsif ARGV[0] =~ Regex.dyndns
  puts "#Title: Dynamic DNS Provider List"
  Processing.feedformat('flat_dom', Urls.dyndns, '', '')

elsif ARGV[0] =~ Regex.nothink
  puts "#Title: alware DNS Network Traffic Blacklist From nothink.org"
  Processing.feedformat('flat_dom', Urls.nothink, '', '')

elsif ARGV[0] =~ Regex.zeus_dom
  puts "#Title: ZeuS Domain Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.zeus_dom, '', '')

elsif ARGV[0] =~ Regex.zeus_ip
  puts "#Title: ZeuS IP Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.zeus_ip, '', '')

elsif ARGV[0] =~ Regex.feodo_dom
  puts "#Title: puts "#Feodo Domain Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.feodo_dom, '', '')

elsif ARGV[0] =~ Regex.feodo_ip
  puts "#Title: Feodo IP Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.feodo_ip, '', '')

elsif ARGV[0] =~ Regex.palevo_dom
  puts "#Title: Palevo Domain Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.palevo_dom, '', '')

elsif ARGV[0] =~ Regex.palevo_ip
  puts "#Title: Palevo IP Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.palevo_ip, '', '')

elsif ARGV[0] =~ Regex.spyeye_dom
  puts "#Title: Spyeye Domain Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.spyeye_dom, '', '')

elsif ARGV[0] =~ Regex.spyeye_ip
  puts "#Title: Spyeye IP Blocklist From abuse.ch"
  Processing.feedformat('flat_dom', Urls.spyeye_ip, '', '')

  ## Flat list with line breaks
elsif ARGV[0] =~ Regex.cybercrime ####NOT WORKING####
  puts "#Title: Cybercrime Tracker List"
  Processing.feedformat('flat_br', Urls.cybercrime, '', '')

  ### Twitter sources

elsif ARGV[0] =~ Regex.tweet
  puts "#Title: Twitter-based Intelligence From Twitter.com/#{ARGV[1]}"
  Processing.feedformat('twitter', '', '', ARGV[1])

  ### RSS file sources

elsif ARGV[0] =~ Regex.mta
<<<<<<< HEAD
	Processing.feedformat('rss', Urls.malware_ta, '//ul//li', '')
=======
  Processing.feedformat('rss', Urls.malware_ta, '//ul//li', '')
>>>>>>> origin/master


=begin
####NOT WORKING YET####
elsif ARGV[0] =~ Regex.ptank
	puts "#Title: OpenDNS PhishTank Domains"
	puts Msg.time_head
	buffer = open(Urls.phishtank)
	buffer.each do |x|
		parsed = JSON.parse(x)
		if parsed["url"] != nil
			ap parsed["url"]
		end
			
	end
	#puts result.uniq.reject &:empty?
		#result = JSON.parse(buffer)
 		#puts result.inspect
 		#trends = result['url']
		#trends.each do |subject|
  		#	puts subject['url']
		#end
####NOT WORKING YET####	
=end
<<<<<<< HEAD

=======
=begin
>>>>>>> origin/master
elsif ARGV[0] =~ Regex.all
	puts "#Title: CYBERsitter Malicious Web Site Filter - Top 100"
	Processing.feedformat('html', Urls.cybersitter, '//b', '')
	puts "#Title: Quttera Malicious Domains Database"
	Processing.feedformat('html', Urls.quttera_mal_url, "//tr[1]/td[2]", '')
	puts "#Title: Quttera Suspicious Domains Database"
	Processing.feedformat('html', Urls.quttera_sus_url, "//tr[1]/td[2]", '')
	puts "#Title: Quttera Potentially Suspicious Domains Database"
	Processing.feedformat('html', Urls.quttera_potsus_url, "//tr[1]/td[2]", '')
	puts "#Title: Sucuri Research Labs Hidden iframes List"
	Processing.feedformat('html', Urls.sucuri_url, "//table[1]//tr//td[3]//a", '')
	puts "#Title: Sucuri Research Labs Conditional Redirect List"
	Processing.feedformat('html', Urls.sucuri_url, "//table[2]//tr//td[3]//a", '')
	puts "#Title: Sucuri Research Labs Encoded JavaScript List"
	Processing.feedformat('html', Urls.sucuri_url, "//table[3]//tr//td[3]//a", '')
	puts "#Title: Web Inspector Unsafe Site List"
	Processing.feedformat('html', Urls.webins_url, "//table[1]//tr//td//span", '')	
	puts "#Title: Malwr.com Recently Extracted Domains List"
	Processing.feedformat('html', Urls.malwr, "//table[1]//tr//td//span[1]", '')
	puts "#Title: VX Vault Last 100 Links"
	Processing.feedformat('flat_dom', Urls.vxvault, '', '')
	puts "#Title: Malc0de Blocklist"
	Processing.feedformat('flat_dom', Urls.malc0de, '', '')
	puts "#Title: DNS-BH – Malware Domain Blocklist"
	Processing.feedformat('flat_dom', Urls.mwdoms, '', '')	
	puts "#Title: SANS Internet Storm Center HIGH Confidence Blocklist"
	Processing.feedformat('flat_dom', Urls.isc_high_url, '', '')	
	puts "#Title: Gameover Zeus Domain List"
	Processing.feedformat('flat_dom', Urls.goz, '', '')
	puts "#Title: Dynamic DNS Provider List"
	Processing.feedformat('flat_dom', Urls.dyndns, '', '')
	puts "#Title: Malware DNS Network Traffic Blacklist From nothink.org"
	Processing.feedformat('flat_dom', Urls.nothink, '', '')
	puts "#Title: ZeuS Domain Blocklist From abuse.ch"
	Processing.feedformat('flat_dom', Urls.zeus_dom, '', '')
	puts "#Title: puts "#Feodo Domain Blocklist From abuse.ch"
	Processing.feedformat('flat_dom', Urls.feodo_dom, '', '')
	puts "#Title: Feodo IP Blocklist From abuse.ch"
	Processing.feedformat('flat_dom', Urls.feodo_ip, '', '')
	puts "#Title: Palevo Domain Blocklist From abuse.ch"
	Processing.feedformat('flat_dom', Urls.palevo_dom, '', '')
	puts "#Title: Spyeye Domain Blocklist From abuse.ch"
	Processing.feedformat('flat_dom', Urls.spyeye_dom, '', '')
	if ARGV[1] != nil
		puts Msg.url_option
	else open(Urls.malware_ta) do |rss|
	  feed = RSS::Parser.parse(rss)
	  puts "#Title: #{feed.channel.description}"
	  puts Msg.time_head
	  feed.items.each do |item|
	  	page = Nokogiri::HTML(open(item.link))
	  	page.xpath('//ul//li').each do |cell|
	  		if PublicSuffix.valid?("#{cell.text.strip}") && "#{cell.text.strip}" !~ /\.zip/ && "#{cell.text.strip}" !~ /\.google\.com/
	  			zray << Regex.reg.match("#{cell.text.strip}").to_s
	  		end
	  	end
	  end
	end
	puts zray.uniq.reject &:empty?
end
<<<<<<< HEAD

=======
=end
>>>>>>> origin/master
else puts Msg.invalid
end
