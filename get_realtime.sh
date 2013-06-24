#!/bin/bash
#
# program: get_realtime.sh
# This script acquires daily USBR data from USBR webservice

FN=usbr
FNAME=usbr_realtime.shf
FN_SOURCE="./"
SHEFPATH=$FN_SOURCE/$FNAME
LOOKBACK=7

###################################################
# Acquire daily data from USBR Webservice
###################################################

cd $FN_SOURCE

#run get_usbr utilitiy to acquire SHEF from
#USBR webservice and filter data we have already seen
#NOTE: Adjust look back to get more data
$FN_SOURCE/get_usbr_webdata realtime $LOOKBACK stations.realtime.list > $SHEFPATH.unfiltered


###################################################
# Perform Feed Specific Operations (filtering, etc.)
###################################################
#Filter out SHEF messages we have seen before
$FN_SOURCE/filterA 100000 $SHEFPATH.unfiltered > $SHEFPATH

###################################################
# Clean up and back up raw data
###################################################

#cat $SHEFPATH >> $FN_SOURCE/raw/usbr_daily_${STAMP}.shf
#rm $SHEFPATH
