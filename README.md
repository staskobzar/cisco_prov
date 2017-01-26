SCCP provisioning 
=========

Provisioning files for Cisco phones SCCP firmware.
Supported Cisco phone models:

### SCCP Templates
- 6921_TEMPL.cfg.xml
- 7911_TEMPL.cnf.xml
- 7912_TEMPL.cnf.xml
- 7921_TEMPL.cnf.xml
- 7925_TEMPL.cnf.xml
- 7945_TEMPL.cnf.xml

### SIP Templates
- 6921_TEMPL.cnf.xml
- 7821_TEMPL.cnf.xml
- 7911_TMPL.cfg.xml
- 7912_TEMPL.txt
- 7940_7960_TEMPL.cnf
- 7941_7961_TEMPL.cnf.xml
- 7942_7962_TEMPL.cnf.xml
- 7945_7965_TEMPL.cnf.xml

See files INFO.txt inside sip/ and sccp/ directories for firmware details.


Configuration templates include server connection group with two nodes
(Asterisk servers), with priority 0 and 1. See "callManagerGroup" parameter in
template.

Default user locale: French_France.
Default network locale: United_States.

## Localization

For more information how to install and setup l10n for different languages see check another project we have:
https://github.com/staskobzar/copsgn2tar
