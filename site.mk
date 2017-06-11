GLUON_SITE_PACKAGES := \
gluon-mesh-batman-adv-14 \
gluon-alfred \
gluon-autoupdater \
gluon-config-mode-autoupdater \
gluon-config-mode-contact-info \
gluon-config-mode-core \
gluon-config-mode-geo-location \
gluon-config-mode-hostname \
gluon-config-mode-mesh-vpn \
gluon-ebtables-filter-multicast \
gluon-ebtables-filter-ra-dhcp \
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
DEFAULT_GLUON_RELEASE := 2017.1-lede$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0
GLUON_BRANCH ?= lede
export GLUON_BRANCH

# Languages to include
GLUON_LANGS ?= en de

# Region settings for ARCHERC7
GLUON_REGION ?= eu

GLUON_ATH10K_MESH ?= ibss
