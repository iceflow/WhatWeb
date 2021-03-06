##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "MoxaHttp" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-05-30
version "0.1"
description "Device Networking for Industry: device server, industrial ethernet switch. - Homepage: http://www.moxa.com/product/product.aspx"

# ShodanHQ results as at 2011-05-30 #
# 3,104 for MoxaHttp

# Examples #
examples %w|
109.70.228.146
151.3.40.174
140.112.67.185
148.71.76.170
140.115.186.98
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@headers["server"].scan(/^MoxaHttp\/([^\s]+)$/) } if @headers["server"] =~ /^MoxaHttp\/([^\s]+)$/

	# Return passive matches
	m
end

end

