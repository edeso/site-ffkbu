##	GLUON_SITE_PACKAGES
#		specify gluon/openwrt packages to include here
#		The gluon-mesh-batman-adv-* package must come first because of the dependency resolution

GLUON_SITE_PACKAGES := \
gluon-autoupdater \
gluon-config-mode-autoupdater \
gluon-config-mode-contact-info \
gluon-config-mode-core \
gluon-config-mode-geo-location \
gluon-config-mode-hostname \
gluon-config-mode-mesh-vpn \
gluon-ebtables-filter-multicast \
gluon-ebtables-filter-ra-dhcp \
gluon-mesh-batman-adv-14 \
gluon-mesh-vpn-fastd \
gluon-neighbour-info \
gluon-radvd \
gluon-respondd \
gluon-setup-mode \
gluon-status-page \
gluon-web-admin \
gluon-web-autoupdater \
gluon-web-mesh-vpn-fastd \
gluon-web-network \
gluon-web-wifi-config \
haveged \
iptables \
iwinfo

# Firmware name pattern
DEFAULT_GLUON_RELEASE := 2017.1-exp$(shell date '+%Y%m%d')

##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Languages to include
GLUON_LANGS ?= en de

# Region settings for ARCHERC7
GLUON_REGION ?= eu

GLUON_ATH10K_MESH = ibss
