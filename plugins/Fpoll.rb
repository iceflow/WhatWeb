##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Fpoll" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-08-25
version "0.1"
description "Fpoll is a simple and easily customizable open source web poll script - Requires: PHP and MySQL - Homepage: http://www.phpfront.com/fpoll.php"

# Google results as at 2011-08-25 #
# 8 for intitle:"Fpoll" intitle:"AdminCP" inurl:admincp ext:php
# 8 for intitle:"Fpoll v1.1 AdminCP"

# Dorks #
dorks [
'intitle:"Fpoll" intitle:"AdminCP" inurl:admincp ext:php'
]

# Examples #
examples %w|
www.phpfront.com/Fpoll/admincp/
www.alasmari.com/Fpoll/admincp/install.php
www.aclandroadchurch.org.uk/Fpoll/admincp/index.php
touch.fm/Fpoll/poll.php
www.bengt-rosby.se/Fpoll/admincp/
www.quepasohoy.com/site/2.2/administracion/encuestas/admincp/index.php
www.pinkfloyd.cl/radio/en/admincp/index.php
www.kesob.com/Fpoll/sonuc.php
|

# Matches #
matches [

# Version Detection # Title
{ :version=>/<title>Fpoll v([^\s^>]+) AdminCP<\/title>[\s]+<link rel="stylesheet" href="admincp\/css\.css" media="all"\/>/ },

# Version Detection # Admin Pages # Title
{ :version=>/<title>Fpoll v([^\s^>]+) AdminCP<\/title>[\s]+<link rel="stylesheet" href="css\.css" media="all"\/>/ },

# Version Detection # Footer
{ :version=>/<br \/><br \/><hr \/><div style="text-align: center;">&copy 20[\d]{2} Fpoll v([^\s^>]+) \(<a href="http:\/\/www\.phpfront\.com">PHPfront\.com<\/a>\) <\/div><\/body>/ },

]

end

