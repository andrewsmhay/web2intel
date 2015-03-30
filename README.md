web2intel
=========

###About

Tool to fetch malicious domains and IP lists from sites that publish RSS feeds, delimited text documents, or raw HTML pages.

###Usage

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
	--cybersitter		- CYBERsitter Malicious Web Site Filter - Top 100
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

	(C) Andrew Hay, 2014
	http://www.andrewhay.ca
	https://twitter.com/andrewsmhay

####Example 1 - Domains only

	$ ./web2intel.rb --sucuri_iframe
	#Title: Sucuri Research Labs Hidden iframes list
	#2014-07-20 15:08:14 -0700
	ads.rzb.ir
	www.scs.tv
	gvlktdfay.ddns.info
	38hartrobertsroad.com
	www.bmconsulting.in
	niu-sae.com
	pgcsolutions.com.au
	sterlinghealthmcs.com
	gamedev.raconsultants.net
	billing.zabiyaka.org
	orion.martasegura.com
	nioxox.nodoclender.com
	joomla.philae.net
	it.altervista.org
	guessworkhiking.ru
	1tvlive.in

####Example 2 - Twitter
	$ ./web2intel.rb --twitter InternetBadness
	#Title: Twitter-based intel from twitter.com/InternetBadness
	#2014-07-25 09:08:18 -0700
	93.174.93.218
	74.82.47.53
	218.77.79.43
	199.87.232.182
	74.82.47.5
	93.174.93.218
	212.83.187.182
	212.83.187.182
	218.77.79.43
	93.174.93.218
	31.214.169.85
	31.214.169.85
	74.82.47.61
	124.232.142.220
	173.208.186.130
	173.208.186.130
	107.183.16.70
	107.183.16.70
	218.77.79.43
	74.82.47.57

###Support

For any questions, bugs, or concerns, please use the GitHub issue submission system and/or reach out to @andrewsmhay on Twitter.

(C) Andrew Hay, 2014