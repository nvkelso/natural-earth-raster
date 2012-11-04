VERSION:=$(shell cat VERSION)
VERSION_PREFIXED=_$(VERSION)
#PACKAGE=NaturalEarth-vector-$(VERSION)
#TARBALL=$(PACKAGE).tar.gz
#Remember to escape the : in the urls
#http://www.slac.stanford.edu/BFROOT/www/Computing/Offline/DataDist/ssh-idfile.html
#
#DOCROOT_NE=ftp\://naturalearthdata.com:download
DOCROOT_NE=naturalearthdata.com:download/test
#DOCROOT_FREAC=ftp.freac.fsu.edu:nacis_ftp/web-download
DOCROOT_FREAC=ftp.freac.fsu.edu:nacis_ftp/web-download/test

all: zip

zip: 10m_raster_zips \
	50m_raster_zips
	#Made zips...
	
	#touch $@
	

# PER THEME, BY SCALESET

# SCALESET ZIPS by zoom and physical, cultural (6 total)

10m_raster_zips: \
	zips/10m_rasters/GRAY_HR_SR.zip \
	zips/10m_rasters/GRAY_HR_SR_OB.zip \
	zips/10m_rasters/GRAY_HR_SR_OB_DR.zip \
	zips/10m_rasters/GRAY_HR_SR_W.zip \
	zips/10m_rasters/GRAY_LR_SR.zip \
	zips/10m_rasters/GRAY_LR_SR_OB.zip \
	zips/10m_rasters/GRAY_LR_SR_OB_DR.zip \
	zips/10m_rasters/GRAY_LR_SR_W.zip \
	zips/10m_rasters/HYP_HR_SR.zip \
	zips/10m_rasters/HYP_HR_SR_OB_DR.zip \
	zips/10m_rasters/HYP_HR_SR_W.zip \
	zips/10m_rasters/HYP_HR_SR_W_DR.zip \
	zips/10m_rasters/HYP_LR_SR.zip \
	zips/10m_rasters/HYP_LR_SR_OB_DR.zip \
	zips/10m_rasters/HYP_LR_SR_W.zip \
	zips/10m_rasters/HYP_LR_SR_W_DR.zip \
	zips/10m_rasters/NE1_HR_LC.zip \
	zips/10m_rasters/NE1_HR_LC_SR.zip \
	zips/10m_rasters/NE1_HR_LC_SR_W.zip \
	zips/10m_rasters/NE1_HR_LC_SR_W_DR.zip \
	zips/10m_rasters/NE1_LR_LC.zip \
	zips/10m_rasters/NE1_LR_LC_SR.zip \
	zips/10m_rasters/NE1_LR_LC_SR_W.zip \
	zips/10m_rasters/NE1_LR_LC_SR_W_DR.zip \
	zips/10m_rasters/NE2_HR_LC.zip \
	zips/10m_rasters/NE2_HR_LC_SR.zip \
	zips/10m_rasters/NE2_HR_LC_SR_W.zip \
	zips/10m_rasters/NE2_HR_LC_SR_W_DR.zip \
	zips/10m_rasters/NE2_LR_LC.zip \
	zips/10m_rasters/NE2_LR_LC_SR.zip \
	zips/10m_rasters/NE2_LR_LC_SR_W.zip \
	zips/10m_rasters/NE2_LR_LC_SR_W_DR.zip \
	zips/10m_rasters/OB_LR.zip \
	zips/10m_rasters/SR_HR.zip \
	zips/10m_rasters/SR_LR.zip
	
	#touch $@	

50m_raster_zips: \
	zips/50m_rasters/BATH_50M.zip \
	zips/50m_rasters/GRAY_50M_SR.zip \
	zips/50m_rasters/GRAY_50M_SR_OB.zip \
	zips/50m_rasters/GRAY_50M_SR_W.zip \
	zips/50m_rasters/HYP_50M_SR.zip \
	zips/50m_rasters/HYP_50M_SR_W.zip \
	zips/50m_rasters/NE1_50M_LC_SR.zip \
	zips/50m_rasters/NE1_50M_LC_SR_W.zip \
	zips/50m_rasters/NE2_50M_LC_SR.zip \
	zips/50m_rasters/NE2_50M_LC_SR_W.zip \
	zips/50m_rasters/SR_50M.zip
	
	#touch $@	


# THEMES

# If either the geometry or the attributes change, time to remake the ZIPs

# 10m_raster
	
zips/10m_rasters/GRAY_HR_SR.zip: 10m_rasters/GRAY_HR_SR/GRAY_HR_SR.tif 10m_rasters/GRAY_HR_SR/GRAY_HR_SR.tfw 10m_rasters/GRAY_HR_SR/GRAY_HR_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-2/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/GRAY_HR_SR_OB.zip: 10m_rasters/GRAY_HR_SR_OB/GRAY_HR_SR_OB.tif 10m_rasters/GRAY_HR_SR_OB/GRAY_HR_SR_OB.tfw 10m_rasters/GRAY_HR_SR_OB/GRAY_HR_SR_OB.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-and-ocean-bottom/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/GRAY_HR_SR_OB_DR.zip: 10m_rasters/GRAY_HR_SR_OB_DR/GRAY_HR_SR_OB_DR.tif 10m_rasters/GRAY_HR_SR_OB_DR/GRAY_HR_SR_OB_DR.tfw 10m_rasters/GRAY_HR_SR_OB_DR/GRAY_HR_SR_OB_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-ocean-bottom-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/GRAY_HR_SR_W.zip: 10m_rasters/GRAY_HR_SR_W/GRAY_HR_SR_W.tif 10m_rasters/GRAY_HR_SR_W/GRAY_HR_SR_W.tfw 10m_rasters/GRAY_HR_SR_W/GRAY_HR_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*



zips/10m_rasters/GRAY_LR_SR.zip: 10m_rasters/GRAY_LR_SR/GRAY_LR_SR.tif 10m_rasters/GRAY_LR_SR/GRAY_LR_SR.tfw 10m_rasters/GRAY_LR_SR/GRAY_LR_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-2/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/GRAY_LR_SR_OB.zip: 10m_rasters/GRAY_LR_SR_OB/GRAY_LR_SR_OB.tif 10m_rasters/GRAY_LR_SR_OB/GRAY_LR_SR_OB.tfw 10m_rasters/GRAY_LR_SR_OB/GRAY_LR_SR_OB.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-and-ocean-bottom/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/GRAY_LR_SR_OB_DR.zip: 10m_rasters/GRAY_LR_SR_OB_DR/GRAY_LR_SR_OB_DR.tif 10m_rasters/GRAY_LR_SR_OB_DR/GRAY_LR_SR_OB_DR.tfw 10m_rasters/GRAY_LR_SR_OB_DR/GRAY_LR_SR_OB_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-ocean-bottom-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/GRAY_LR_SR_W.zip: 10m_rasters/GRAY_LR_SR_W/GRAY_LR_SR_W.tif 10m_rasters/GRAY_LR_SR_W/GRAY_LR_SR_W.tfw 10m_rasters/GRAY_LR_SR_W/GRAY_LR_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-gray-earth/gray-earth-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*




zips/10m_rasters/HYP_HR_SR.zip: 10m_rasters/HYP_HR_SR/HYP_HR_SR.tif 10m_rasters/HYP_HR_SR/HYP_HR_SR.tfw 10m_rasters/HYP_HR_SR/HYP_HR_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/HYP_HR_SR_OB_DR.zip: 10m_rasters/HYP_HR_SR_OB_DR/HYP_HR_SR_OB_DR.tif 10m_rasters/HYP_HR_SR_OB_DR/HYP_HR_SR_OB_DR.tfw 10m_rasters/HYP_HR_SR_OB_DR/HYP_HR_SR_OB_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/cross-blended-hypso-with-relief-water-drains-and-ocean-bottom/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/HYP_HR_SR_W.zip: 10m_rasters/HYP_HR_SR_W/HYP_HR_SR_W.tif 10m_rasters/HYP_HR_SR_W/HYP_HR_SR_W.tfw 10m_rasters/HYP_HR_SR_W/HYP_HR_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/10m-cross-blended-hypso-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/HYP_HR_SR_W_DR.zip: 10m_rasters/HYP_HR_SR_W_DR/HYP_HR_SR_W_DR.tif 10m_rasters/HYP_HR_SR_W_DR/HYP_HR_SR_W_DR.tfw 10m_rasters/HYP_HR_SR_W_DR/HYP_HR_SR_W_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/cross-blended-hypso-with-shaded-relief-water-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*



zips/10m_rasters/HYP_LR_SR.zip: 10m_rasters/HYP_LR_SR/HYP_LR_SR.tif 10m_rasters/HYP_LR_SR/HYP_LR_SR.tfw 10m_rasters/HYP_LR_SR/HYP_LR_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/HYP_LR_SR_OB_DR.zip: 10m_rasters/HYP_LR_SR_OB_DR/HYP_LR_SR_OB_DR.tif 10m_rasters/HYP_LR_SR_OB_DR/HYP_LR_SR_OB_DR.tfw 10m_rasters/HYP_LR_SR_OB_DR/HYP_LR_SR_OB_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/cross-blended-hypso-with-relief-water-drains-and-ocean-bottom/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/HYP_LR_SR_W.zip: 10m_rasters/HYP_LR_SR_W/HYP_LR_SR_W.tif 10m_rasters/HYP_LR_SR_W/HYP_LR_SR_W.tfw 10m_rasters/HYP_LR_SR_W/HYP_LR_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/10m-cross-blended-hypso-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/HYP_LR_SR_W_DR.zip: 10m_rasters/HYP_LR_SR_W_DR/HYP_LR_SR_W_DR.tif 10m_rasters/HYP_LR_SR_W_DR/HYP_LR_SR_W_DR.tfw 10m_rasters/HYP_LR_SR_W_DR/HYP_LR_SR_W_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-cross-blend-hypso/cross-blended-hypso-with-shaded-relief-water-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*




zips/10m_rasters/NE1_HR_LC.zip: 10m_rasters/NE1_HR_LC/NE1_HR_LC.tif 10m_rasters/NE1_HR_LC/NE1_HR_LC.tfw 10m_rasters/NE1_HR_LC/NE1_HR_LC.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/10m-natural-earth/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE1_HR_LC_SR.zip: 10m_rasters/NE1_HR_LC_SR/NE1_HR_LC_SR.tif 10m_rasters/NE1_HR_LC_SR/NE1_HR_LC_SR.tfw 10m_rasters/NE1_HR_LC_SR/NE1_HR_LC_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/natural-earth-1-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE1_HR_LC_SR_W.zip: 10m_rasters/NE1_HR_LC_SR_W/NE1_HR_LC_SR_W.tif 10m_rasters/NE1_HR_LC_SR_W/NE1_HR_LC_SR_W.tfw 10m_rasters/NE1_HR_LC_SR_W/NE1_HR_LC_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/10m-natural-earth-1-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE1_HR_LC_SR_W_DR.zip: 10m_rasters/NE1_HR_LC_SR_W_DR/NE1_HR_LC_SR_W_DR.tif 10m_rasters/NE1_HR_LC_SR_W_DR/NE1_HR_LC_SR_W_DR.tfw 10m_rasters/NE1_HR_LC_SR_W_DR/NE1_HR_LC_SR_W_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/10m-natural-earth-1-with-shaded-relief-water-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*



zips/10m_rasters/NE1_LR_LC.zip: 10m_rasters/NE1_LR_LC/NE1_LR_LC.tif 10m_rasters/NE1_LR_LC/NE1_LR_LC.tfw 10m_rasters/NE1_LR_LC/NE1_LR_LC.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/10m-natural-earth/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE1_LR_LC_SR.zip: 10m_rasters/NE1_LR_LC_SR/NE1_LR_LC_SR.tif 10m_rasters/NE1_LR_LC_SR/NE1_LR_LC_SR.tfw 10m_rasters/NE1_LR_LC_SR/NE1_LR_LC_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/natural-earth-1-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE1_LR_LC_SR_W.zip: 10m_rasters/NE1_LR_LC_SR_W/NE1_LR_LC_SR_W.tif 10m_rasters/NE1_LR_LC_SR_W/NE1_LR_LC_SR_W.tfw 10m_rasters/NE1_LR_LC_SR_W/NE1_LR_LC_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/10m-natural-earth-1-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE1_LR_LC_SR_W_DR.zip: 10m_rasters/NE1_LR_LC_SR_W_DR/NE1_LR_LC_SR_W_DR.tif 10m_rasters/NE1_LR_LC_SR_W_DR/NE1_LR_LC_SR_W_DR.tfw 10m_rasters/NE1_LR_LC_SR_W_DR/NE1_LR_LC_SR_W_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-1/10m-natural-earth-1-with-shaded-relief-water-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*




zips/10m_rasters/NE2_HR_LC.zip: 10m_rasters/NE2_HR_LC/NE2_HR_LC.tif 10m_rasters/NE2_HR_LC/NE2_HR_LC.tfw 10m_rasters/NE2_HR_LC/NE2_HR_LC.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-ii-basic/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE2_HR_LC_SR.zip: 10m_rasters/NE2_HR_LC_SR/NE2_HR_LC_SR.tif 10m_rasters/NE2_HR_LC_SR/NE2_HR_LC_SR.tfw 10m_rasters/NE2_HR_LC_SR/NE2_HR_LC_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-ii-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE2_HR_LC_SR_W.zip: 10m_rasters/NE2_HR_LC_SR_W/NE2_HR_LC_SR_W.tif 10m_rasters/NE2_HR_LC_SR_W/NE2_HR_LC_SR_W.tfw 10m_rasters/NE2_HR_LC_SR_W/NE2_HR_LC_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-ii-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE2_HR_LC_SR_W_DR.zip: 10m_rasters/NE2_HR_LC_SR_W_DR/NE2_HR_LC_SR_W_DR.tif 10m_rasters/NE2_HR_LC_SR_W_DR/NE2_HR_LC_SR_W_DR.tfw 10m_rasters/NE2_HR_LC_SR_W_DR/NE2_HR_LC_SR_W_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-2-with-shaded-relief-water-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*




zips/10m_rasters/NE2_LR_LC.zip: 10m_rasters/NE2_LR_LC/NE2_LR_LC.tif 10m_rasters/NE2_LR_LC/NE2_LR_LC.tfw 10m_rasters/NE2_LR_LC/NE2_LR_LC.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-ii-basic/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE2_LR_LC_SR.zip: 10m_rasters/NE2_LR_LC_SR/NE2_LR_LC_SR.tif 10m_rasters/NE2_LR_LC_SR/NE2_LR_LC_SR.tfw 10m_rasters/NE2_LR_LC_SR/NE2_LR_LC_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-ii-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE2_LR_LC_SR_W.zip: 10m_rasters/NE2_LR_LC_SR_W/NE2_LR_LC_SR_W.tif 10m_rasters/NE2_LR_LC_SR_W/NE2_LR_LC_SR_W.tfw 10m_rasters/NE2_LR_LC_SR_W/NE2_LR_LC_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-ii-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/NE2_LR_LC_SR_W_DR.zip: 10m_rasters/NE2_LR_LC_SR_W_DR/NE2_LR_LC_SR_W_DR.tif 10m_rasters/NE2_LR_LC_SR_W_DR/NE2_LR_LC_SR_W_DR.tfw 10m_rasters/NE2_LR_LC_SR_W_DR/NE2_LR_LC_SR_W_DR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-natural-earth-2/10m-natural-earth-2-with-shaded-relief-water-and-drainages/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*




zips/10m_rasters/OB_LR.zip: 10m_rasters/OB_LR/OB_LR.tif 10m_rasters/OB_LR/OB_LR.tfw 10m_rasters/OB_LR/OB_LR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-ocean-bottom/ocean-bottom-base/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*




zips/10m_rasters/SR_HR.zip: 10m_rasters/SR_HR/SR_HR.tif 10m_rasters/SR_HR/SR_HR.tfw 10m_rasters/SR_HR/SR_HR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-shaded-relief/10m-shaded-relief-basic/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*


zips/10m_rasters/SR_LR.zip: 10m_rasters/SR_LR/SR_LR.tif 10m_rasters/SR_LR/SR_LR.tfw 10m_rasters/SR_LR/SR_LR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/10m-shaded-relief/10m-shaded-relief-basic/ > $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/10m_rasters/,,$(basename $@)).*




# 50m_raster


zips/50m_rasters/BATH_50M.zip: 50m_rasters/BATH_50M/BATH_50M.psd 50m_rasters/BATH_50M/BATH_50M.tfw 50m_rasters/BATH_50M/BATH_50M.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-bathymetry/bathymetry-basic/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	#zip -j -r $@ $(subst zips/, ,$(basename $@)).*
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*


zips/50m_rasters/GRAY_50M_SR.zip: 50m_rasters/GRAY_50M_SR/GRAY_50M_SR.tif 50m_rasters/GRAY_50M_SR/GRAY_50M_SR.tfw 50m_rasters/GRAY_50M_SR/GRAY_50M_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-gray-earth/gray-earth-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*

zips/50m_rasters/GRAY_50M_SR_OB.zip: 50m_rasters/GRAY_50M_SR_OB/GRAY_50M_SR_OB.tif 50m_rasters/GRAY_50M_SR_OB/GRAY_50M_SR_OB.tfw 50m_rasters/GRAY_50M_SR_OB/GRAY_50M_SR_OB.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-gray-earth/gray-earth-with-ocean-bottom/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*

zips/50m_rasters/GRAY_50M_SR_W.zip: 50m_rasters/GRAY_50M_SR_W/GRAY_50M_SR_W.tif 50m_rasters/GRAY_50M_SR_W/GRAY_50M_SR_W.tfw 50m_rasters/GRAY_50M_SR_W/GRAY_50M_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-gray-earth/50m-gray-earth-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*



zips/50m_rasters/HYP_50M_SR.zip: 50m_rasters/HYP_50M_SR/HYP_50M_SR.tif 50m_rasters/HYP_50M_SR/HYP_50M_SR.tfw 50m_rasters/HYP_50M_SR/HYP_50M_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-cross-blend-hypso/50m-cross-blended-hypso-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*

zips/50m_rasters/HYP_50M_SR_W.zip: 50m_rasters/HYP_50M_SR_W/HYP_50M_SR_W.tif 50m_rasters/HYP_50M_SR_W/HYP_50M_SR_W.tfw 50m_rasters/HYP_50M_SR_W/HYP_50M_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-cross-blend-hypso/50m-cross-blended-hypso-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*



zips/50m_rasters/NE1_50M_LC_SR.zip: 50m_rasters/NE1_50M_LC_SR/NE1_50M_LC_SR.tif 50m_rasters/NE1_50M_LC_SR/NE1_50M_LC_SR.tfw 50m_rasters/NE1_50M_LC_SR/NE1_50M_LC_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-natural-earth-1/50m-natural-earth-i-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*

zips/50m_rasters/NE1_50M_LC_SR_W.zip: 50m_rasters/NE1_50M_LC_SR_W/NE1_50M_LC_SR_W.tif 50m_rasters/NE1_50M_LC_SR_W/NE1_50M_LC_SR_W.tfw 50m_rasters/NE1_50M_LC_SR_W/NE1_50M_LC_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-natural-earth-1/50m-natural-earth-i-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*



zips/50m_rasters/NE2_50M_LC_SR.zip: 50m_rasters/NE2_50M_LC_SR/NE2_50M_LC_SR.tif 50m_rasters/NE2_50M_LC_SR/NE2_50M_LC_SR.tfw 50m_rasters/NE2_50M_LC_SR/NE2_50M_LC_SR.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-natural-earth-2/50m-natural-earth-ii-with-shaded-relief/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*


zips/50m_rasters/NE2_50M_LC_SR_W.zip: 50m_rasters/NE2_50M_LC_SR_W/NE2_50M_LC_SR_W.tif 50m_rasters/NE2_50M_LC_SR_W/NE2_50M_LC_SR_W.tfw 50m_rasters/NE2_50M_LC_SR_W/NE2_50M_LC_SR_W.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-natural-earth-2/50m-natural-earth-ii-with-shaded-relief-and-water/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*




zips/50m_rasters/SR_50M.zip: 50m_rasters/SR_50M/SR_50M.tif 50m_rasters/SR_50M/SR_50M.tfw 50m_rasters/SR_50M/SR_50M.prj
	cp VERSION $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).VERSION.txt
	curl http://www.naturalearthdata.com/downloads/50m-shaded-relief/50m-shaded-relief-basic/ > $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).README.html
	zip -j -r $@ $(subst zips/, ,$(basename $@))/$(subst zips/50m_rasters/,,$(basename $@)).*





# PUSH IT LIVE

# 10m_raster

zips/live-10m_raster_ne: 10m_raster_zips
	rsync -Cru --progress zips/10m_raster/ $(DOCROOT_NE)/10m/raster/
	touch $@

zips/live-10m_raster_freac: 10m_raster_zips
	rsync -Cru --progress zips/10m_raster/ $(DOCROOT_FREAC)/10m/raster/
	touch $@

# 50m_raster

zips/live-50m_raster_ne: 50m_raster_zips
	rsync -Cru --progress zips/50m_raster/ $(DOCROOT_NE)/50m/raster/
	touch $@

zips/live-50m_raster_freac: 50m_raster_zips
	rsync -Cru --progress zips/50m_raster/ $(DOCROOT_FREAC)/50m/raster/
	touch $@


downloads:
	# DOWNLOADS copy
	rsync -Cru --progress zips/10m_raster/ downloads/

	touch $@
	

live: \
	zips/live-10m_raster_ne \
	zips/live-10m_raster_freac \
	zips/live-50m_raster_ne \
	zips/live-50m_raster_freac
	
	touch $@

clean:
	mkdir -p zips/10m_rasters
	mkdir -p zips/50m_rasters
	rm -rf zips/10m_rasters/*
	rm -rf zips/50m_rasters/*