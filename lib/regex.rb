class Regex
	class << self
		def new_reg; /((?:(?:[a-zA-Z\u00a1-\uffff0-9]+-{0,2})*[a-zA-Z\u00a1-\uffff0-9]+)(?:\.(?:[a-zA-Z\u00a1-\uffff0-9]+-{0,2})*[a-zA-Z\u00a1-\uffff0-9]+)*)/; end
		def reg_ip; /((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3})/; end
		def url_option; /\-\-url/; end
		def reg; /([a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6})\b/; end # regex for [host].[domain].[tld] only
		def reg_url; /(.+)/; end	# sloppy regex to grab the URL
		def reg_url2; /(.+)\//; end	# sloppy regex to grab the URL
		def reg_fp; /src\=\"(.+)/; end
		def reg_redir; /redirections(.+)/; end
		def reg_spam; /spammer(.+)/; end
		def reg_js; /javascript(.+)/; end
		def reg_if; /iframe(.+)/; end
		def leading; /src\=\"/; end
		def leading_js; /.+\"http/; end
		def trailing; /\".+/; end
		def sslbl; /\-\-sslbl/; end
		def qmal; /\-\-q\_mal/; end
		def qsus; /\-\-q\_sus/; end
		def qpot; /\-\-q\_pot/; end
		def details; /\-\-details/; end
		def goz; /\-\-goz/; end
		def mwdoms; /\-\-mwdoms/; end
		def common_name; /Common Name/; end
		def lhost; /localhost/; end
		def c_equals; /C=/; end
		def domain; /\[Domain\]\:/; end
		def isc_low; /\-\-isc\_low/; end
		def isc_med; /\-\-isc\_med/; end
		def isc_high; /\-\-isc\_high/; end
		def sucuri_iframe; /\-\-sucuri\_iframe/; end
		def sucuri_redirect; /\-\-sucuri\_redirect/; end
		def sucuri_spam; /\-\-sucuri\_spam/; end
		def sucuri_js; /\-\-sucuri\_js/; end
		def all; /\-\-all/; end
		def webins; /\-\-webins/; end
		def tweet; /\-\-twitter/; end
		def mta; /\-\-malware_ta/; end
		def ptank; /\-\-phishtank/; end
		def cysitt; /\-\-cybersitter/; end
		def malc0de; /\-\-malc0de/; end
		def cybercrime; /\-\-cybercrime/; end
		def dyndns; /\-\-dyndns/; end
		def nothink; /\-\-nothink/; end
		def vxvault; /\-\-vxvault/; end
		def zeus_dom; /\-\-zeus_dom/; end
		def zeus_ip; /\-\-zeus_ip/; end
		def feodo_dom; /\-\-feodo_dom/; end
		def feodo_ip; /\-\-feodo_ip/; end
		def palevo_dom; /\-\-palevo_dom/; end
		def palevo_ip; /\-\-palevo_ip/; end
		def spyeye_dom; /\-\-spyeye_dom/; end
		def spyeye_ip; /\-\-spyeye_ip/; end
		def et_ip; /\-\-et_ip/; end
		def malwr; /\-\-malwr/; end
	end
end