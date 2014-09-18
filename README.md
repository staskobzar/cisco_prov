SCCP provisioning 
=========

Provisioning files for Cisco phones SCCP firmware.
Supported Cisco phone models:

Model        | Firmware ver. | Provisioning template file
------------ | ------------- | ------------- 
7960/7940    | P0030801SR02  | 7900_TEMPL.cnf.xml
7911         | SCCP11.9-4-2-1S | 7911_TEMPL.cnf.xml


Configuration templates include server connection group with two nodes
(Asterisk servers), with priority 0 and 1. See "callManagerGroup" parameter in
template.

Default user locale: French_France.
Default network locale: United_States.

