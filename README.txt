============================
repository: get_usbr_webdata
============================

------------------
PROGRAM HELP TEXT:
------------------

get_usbr_webdata v1.0
04 November 2011
POC: Gunnar Leffler

This program get data from the USBR's web service and converts it to SHEF for
transfer/ingestion into another database. It uses alias files to convert the
physical element codes the USBR uses to PE codes found in the SHEF manual.

DEPENDENCIES:
 This program expects the following alias files to be in the current working directory (PWD):
  daily.alias
  realtime.alias

USAGE:
 get_usbr_webdata <daily|realtime> <lookback window in days|loopback window in hours> <stationlist>

EXAMPLE:
 get_usbr_webdata daily 1 stations.list

------
FILES:
------

get_usbr_webdata
----------------
Data acquisition script.


daily.alias
-----------
This file is required by script, it maps the PE codes the USBR daily database uses to PE codes found in the SHEF manual.

realtime.alias
--------------
This file is required by script, it maps the PE codes the USBR daily database uses to PE codes found in the SHEF manual.

daily.doc
---------
Word document from the USBR that explains their "daily webservice."

instant.doc
-----------
Word document from the USBR that explains their "instantaneous webservice."

get_daily.sh
------------
example script that gets daily data from USBR webservice.

get_realtime.sh
---------------
example script that gets realtime data from USBR webservice.

README.txt
----------
This readme file.
