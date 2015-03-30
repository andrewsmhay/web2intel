class Msg
	class << self
		def url_option; "The --url option is not available for this report..."; end
		def time; Time.new; end
		def time_head; "#"+time.inspect; end
		def invalid
			"
Invalid command...

[Usage]
./web2intel.rb <option> <extras>

<option>
--q_mal 			- The Quttera malicious domains database
--q_sus 			- The Quttera suspicious domains database
--q_pot 			- The Quttera potentially suspicious database
--goz 				- Gameover Zeus (GoZeus) list from Bambenek Consulting
--mwdoms 			- DNS-BH – Malware Domain Blocklist
--malware_ta		- Malware-Traffic-Analysis.net domains
--isc_low			- SANS Internet Storm Center LOW confidence block list
--isc_med			- SANS Internet Storm Center MEDIUM confidence block list
--isc_high			- SANS Internet Storm Center HIGH confidence block list
--sucuri_iframe		- Sucuri scanner identified iframe compromised web site list
--sucuri_redirect	- Sucuri scanner identified conditional redirections list (based on user agents or referers)
--sucuri_js			- Sucuri scanner identified encoded javascript (redirecting to blackhole and other exploit kits) or to build a remote call list
--webins 			- Comodo Web Inspector malicious, suspicious content, and malware site list
--cybersitter		- CYBERsitter Malicious Web Site Filter: Top 100 Phishing, Malicious and Suspicious Sites from the past 60 minutes
--twitter			- Twitter username (e.g. andrewsmhay). Do not prepend the '@' symbol
--phishtank			- OpenDNS PhishTank Domains
--malc0de			- Malc0de Blocklist
--cybercrime		- Cybercrime Tracker List
--dyndns			- Dynamic DNS Provider List
--nothink			- Malware DNS Network Traffic Blacklist from nothink.org
--vxvault			- VX Vault Last 100 Links
--zeus_dom			- ZeuS Domain Blocklist from abuse.ch
--zeus_ip			- ZeuS IP Blocklist from abuse.ch
--feodo_dom			- Feodo Domain Blocklist from abuse.ch
--feodo_ip			- Feodo IP Blocklist from abuse.ch
--palevo_dom		- Palevo Domain Blocklist from abuse.ch
--palevo_ip			- Palevo IP Blocklist from abuse.ch
--spyeye_dom		- Spyeye Domain Blocklist from abuse.ch
--spyeye_ip			- Spyeye IP Blocklist from abuse.ch

--all 		- Generate a master list of all domains

<extras>
--url		- Extract the fully quaified domain name (FQDN), protocol, port, and directory structure (if available)
--details	- Addtional inline details (if available)

[Examples]
./web2intel.rb --q_mal --url
./web2intel.rb --twitter andrewsmhay
./web2intel.rb --sucuri_js

(C) Andrew Hay, 2014
http://www.andrewhay.ca
https://twitter.com/andrewsmhay

"
		end
	end
end