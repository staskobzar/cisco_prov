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

## Summary table
Here a summary of my efforts to make provisioning work per model and firmware (SIP/SCCP).
Alone with localization (*l10n*) configuration status. In my case I was using French l10n.

| Model | SCCP firmware | SCCP l10n | SIP firmware | SIP l10n |
| ----- | :-----------: | :-------: | :----------: | :------: |
| 7910 | `OK` | `OK` | **N/A** | **N/A** |
| 7911 | `OK` | `OK` | `OK` | `OK` |
| 7912 | `OK` | `OK` | `OK` | **FAIL** |
| 6921 | `OK` | `OK` | **FAIL** | `OK` |
| 7941 | `OK` | `OK` | `OK` | `OK` |
| 7961 | `OK` | `OK` | `OK` | `OK` |
| 7942 | `OK` | `OK` | `OK` | `OK` |
| 7962 | `OK` | `OK` | `OK` | `OK` |
| 7940 | `OK` | `OK` | `OK` | **FAIL** |
| 7960 | `OK` | `OK` | `OK` | **FAIL** |
| 7921 | **N/A** | **N/A** | `OK` | `OK` |
| 7925 | **N/A** | **N/A** | `OK` | `OK` |
| 7821 | **N/A** | **N/A** | `OK` | `OK` |
| 7945 | `OK` | `OK` | `OK` | `OK` |
| 7965 | `OK` | `OK` | `OK` | `OK` |

## Localization

For more information how to install and setup l10n for different languages see check another project we have:
https://github.com/staskobzar/copsgn2tar
