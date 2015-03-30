class Urls
	class << self
		#def sslbl_url; 'https://sslbl.abuse.ch/sslbl.rss'; end
		def malware_ta; 'http://www.malware-traffic-analysis.net/blog-entries.rss'; end
		def quttera_mal_url; 'http://quttera.com/lists/malicious'; end
		def quttera_sus_url; 'http://quttera.com/lists/suspicious'; end
		def quttera_potsus_url; 'http://quttera.com/lists/potentially_suspicious'; end
		def goz; 'http://osint.bambenekconsulting.com/feeds/goz-domlist.txt'; end
		def mwdoms; 'http://mirror1.malwaredomains.com/files/domains.txt'; end
		def dyndns; 'http://mirror2.malwaredomains.com/files/dynamic_dns.txt'; end
		def isc_low_url; 'https://isc.sans.edu/feeds/suspiciousdomains_Low.txt'; end
		def isc_med_url; 'https://isc.sans.edu/feeds/suspiciousdomains_Medium.txt'; end
		def isc_high_url; 'https://isc.sans.edu/feeds/suspiciousdomains_High.txt'; end
		def sucuri_url; 'http://labs.sucuri.net/?malware'; end
		def webins_url; 'http://app.webinspector.com/public/recent_detections'; end
		def phishtank; 'http://data.phishtank.com/data/online-valid.json'; end
		def cybersitter; 'http://www.cybersitter.com/CsURITop100.htm'; end
		def malc0de; 'http://malc0de.com/bl/ZONES'; end
		def cybercrime; 'http://www.cybercrime-tracker.net/all.php'; end
		def nothink; 'http://www.nothink.org/blacklist/blacklist_malware_dns.txt'; end
		def vxvault; 'http://vxvault.siri-urz.net/URL_List.php'; end
		def zeus_dom; 'https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist'; end
		def zeus_ip; 'https://zeustracker.abuse.ch/blocklist.php?download=ipblocklist'; end
		def feodo_dom; 'https://feodotracker.abuse.ch/blocklist.php?download=domainblocklist'; end
		def feodo_ip; 'https://feodotracker.abuse.ch/blocklist.php?download=ipblocklist'; end
		def palevo_dom; 'https://palevotracker.abuse.ch/blocklists.php?download=domainblocklist'; end
		def palevo_ip; 'https://palevotracker.abuse.ch/blocklists.php?download=ipblocklist'; end
		def spyeye_dom; 'https://spyeyetracker.abuse.ch/blocklist.php?download=domainblocklist'; end
		def spyeye_ip; 'https://spyeyetracker.abuse.ch/blocklist.php?download=ipblocklist'; end
		def et_ip; 'http://rules.emergingthreats.net/blockrules/compromised-ips.txt'; end
		def malwr; 'https://malwr.com/'; end
	end
end