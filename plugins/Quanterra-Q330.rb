##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Quanterra-Q330" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-05-31
version "0.1"
description "Quanterra Q330 series - seismic data acquisition systems - Homepage: http://kmi.com/p-163-Home.aspx"

# More Info #
# Knowledge Base: http://www.q330.com/

# Q330S
# Homepage: http://www.kinemetrics.com/p-79-q330s.aspx
# Manual: http://www.q330.com/Products/Q330S-RevA.pdf
# The Q330S is an advanced 3 or 6 channel, broad-band, high resolution, ultra-low-power seismic system incorporating Quanterra's proven IP networking technology and super rugged USB flash recording.

# Baler44
# Homepage: http://www.kinemetrics.com/p-80-Packet-Baler-44-(PB44-Field).aspx
# Manual: http://www.q330.com/Products/Baler44-RevA.pdf
# The Quanterra Baler44 Packet Baler is a modular, field-ready high-capacity recording system for the Quanterra Q330 ultralow-power high-resolution seismic data acquisition system.

# Q330HR
# Homepage: http://www.kinemetrics.com/p-77-q330hr.aspx
# Manual: http://www.q330.com/Products/Q330HR-RevB.pdf
# The Quanterra Q330HR sets a new performance standard in seismological instrumentation, building upon the widely praised ultra-low-power Q330. The Q330HR breaks the 24-bit performance barrier to extend the capability of advanced instrumentation for research. The Q330HR remains 100% compatible with our Q330.

# Q330
# Homepage: http://www.kinemetrics.com/p-78-Q330.aspx
# Manual: http://www.q330.com/Products/Q330-RevK.pdf
# The Quanterra Q330 is an advanced, low-cost, IP network-aware very low-power 3-6 channel remote broad-band seismic system incorporating Quanterra's leading, proven broad-band technology.

# ShodanHQ results as at 2011-05-31 #
# 94 for Q330

# Google results as at 2011-05-31 #
# 1 for intitle:"Q330 Web Server" -"$ID$"

# Dorks #
dorks [
'intitle:"Q330 Web Server" -"$ID$"'
]

# Examples #
examples %w|
132.248.227.72
92.87.193.150
201.200.59.26
140.105.54.72
166.143.25.155
129.79.146.168
67.143.95.58
59.120.107.35
193.35.0.107
|

# Matches #
matches [

# Form
{ :text=>'<form action="BALEPWR.HTM" method="POST"><input type="SUBMIT" name="PWR" value="Turn on Baler Power"><br>' },

]

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@headers["server"].scan(/^Q330 V([^\s]+)$/) } if @headers["server"] =~ /^Q330 V([^\s]+)$/

	# Return passive matches
	m
end

end

