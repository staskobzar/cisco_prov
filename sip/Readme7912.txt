This software upgrade package includes the following files for the
Cisco 7905G/7912G IP phones.  

Filename                   Description
=========================  =====================================================
bmp2logo.exe               Convert bitmap file to Cisco IP phone binary format
cfgfmt.exe                 Convert SIP profile from text to binary (Windows)
cfgfmt.linux               Convert SIP profile from text to binary (Linux)
cfgfmt.sun                 Convert SIP profile from text to binary (Solaris)
prserv.exe                 Capture Cisco IP phone debug outputs (Windows)
prserv.linux               Capture Cisco IP phone debug outputs (Linux)
prserv.sun                 Capture Cisco IP phone debug outputs (Solaris)
readme.txt                 This file
sip_ptag.dat               SIP parameter tags file for use with 'cfgfmt.exe'
sipexample.txt             Sample Cisco 7905G/7912G IP phone SIP profile
=========================  =====================================================

The following additional files are included in the Cisco 7905G SIP software
upgrade package.

Filename                   Description
=========================  =====================================================
CP7905080000SIP060111A.zup   Cisco 7905G SIP Upgrade image for phones
                             without image authentication capability
CP7905080000SIP060111A.sbin  Cisco 7905G SIP Upgrade image for phones
                             with image authentication capability
lddefault.cfg              Cisco 7905G generic binary profile for quick upgrade
lddefault.txt              Cisco 7905G generic text profile for quick upgrade
=========================  =====================================================

The following additional files are included in the Cisco 7912G SIP software
upgrade package.

Filename                   Description
=========================  =====================================================
CP7912080000SIP060111A.sbin  Cisco 7912G SIP Upgrade image
gkdefault.cfg              Cisco 7912G generic binary profile for quick upgrade
gkdefault.txt              Cisco 7912G generic text profile for quick upgrade
=========================  =====================================================

Please refer to the Cisco IP Phone 7905G/7912G Administrator Guide (SIP) for
more information on the usage of these programs.

--------------------------------------------------------------------------------
                  ABOUT CISCO IP PHONES SOFTWARE UPGRADE IMAGES                 
--------------------------------------------------------------------------------

The Cisco 7905G SIP software package includes two upgrade images:

     CP7905xxxx.zup
     CP7905xxxx.sbin

The Cisco 7912G SIP software package includes one upgrade image:

     CP7912xxxx.sbin

A Cisco 7905G IP phone may request either the .zup or .sbin upgrade image
depending whether it can perform image authentication, which is a 
process all new Cisco IP phones use to verify the image authenticity.

A Cisco 7905G IP phone without the ability to perform image authentication
will request the .zup image first, which will provide it with the ability
to verify the authenticity of .sbin images in future upgrades.

A Cisco 7905G IP phone that can already perform file authentication will 
only request .sbin files.  

All Cisco 7912G IP phones are capable of performing image authentication
and will request only the .sbin upgrade image.

If a phone's profile specifies the .ZUP upgrade image, an authentication-aware
phone will modify the image extension name and request the .SBIN upgrade image
from the TFTP server.

--------------------------------------------------------------------------------
                        HOW TO UPGRADE A CISCO IP PHONE
--------------------------------------------------------------------------------

For your convenience, a default configuration file has been created to help
you quickly upgrade to the latest .zup or .sbin software image.  The 
"lddefault.cfg" for the 7905G and "gkdefault.cfg" for the 7912G are based 
on the "lddefault.txt" and "gkdefault.txt", respectively.  A default GUI/Web
password of "1234" is set.  You will be prompted for this password when you
try to change the Network or SIP configuration, or access the phone's web page.
If the password is disabled (set to 0), then the phone configuration via the
web is also disabled.

To upgrade your Cisco IP phone, please follow the steps below.

1. Copy the following files to the TFTP server.

   For Cisco 7905G          For Cisco 7912G
   ---------------          ---------------
   CP7905xxxx.zup           CP7912xxxx.sbin
   CP7905xxxx.sbin          gkdefault.cfg
   lddefault.cfg 

2. Enable the use of TFTP on the Cisco IP phone.

   -----------------------------------------------------------
   Instructions for Cisco IP phones with an existing SIP image
   -----------------------------------------------------------

   (A) Using the LCD Menu

       1. Press MENU key
       2. Select Settings > Network Configuration
       3. Press **# to unlock the menu

          You may be prompted to enter a password to unlock the menu.
          Enter the UI password, if required, before proceeding.

       4. Select "TFTP Enabled" menu option
       5. Press "Yes" key

          Skip steps 5.1-5.6 if the Cisco IP phone will be downloading 
          the files from the DHCP-specified TFTP URL or IP address. 

          5.1  Select "Alternate TFTP" menu option 
          5.2  Press "Yes" key
          5.3  Select "TFTP Server" menu option
          5.4  Press "Edit" key
          5.5  Enter TFTP server IP address 
          5.6  Press "Validate" key to save the value
       
       6. Press "Save" key to save the changes
       7. Press MENU key to exit configuration menu

    (B) Using the Web Interface

       1. Start your favorite browser
       2. Enter the URL 
            
               http://<PHONE_IP_ADDRESS>/dev
 
          where PHONE_IP_ADDRESS can be found by selecting 
          MENU > Settings > Network Configuration > IP Address
          from the phone screen.

       3. Enter the UI Password when prompted.  

          If no UI password had been provisioned, you will not be able
          to make any parameter changes from the web interface.  
          
       4. Click on the "Network Parameters" option
       5. Enter "1" in the UseTftp parameter field
       6. Enter "0.0.0.0" in the TftpURL parameter field if the Cisco
          IP phone will be downloading its files from the DHCP-specified
          TFTP server; otherwise, enter the TFTP URL or IP address of
          the TFTP server.
       7. Click the "Apply" button to save the changes.

   -------------------------------------------------------------------------
   Instructions for NEW or EXISTING Cisco IP phones with SCCP image
   -------------------------------------------------------------------------

   (C) Using the LCD menu

        1. Press MENU key
        2. Select Settings > Network Configuration
        3. Press **# to unlock the menu

          You may be prompted to enter a password to unlock the menu.
          Enter the UI password, if required, before proceeding.
            
        4. Select "Alternate TFTP" menu option
        5. Press "Yes" key
        6. Select "TFTP Server 1" menu option
        7. Press "Edit" key
        8. Enter TFTP server IP address
        9. Press "Validat." key
       10. Press "Save" key to save the value
       11. Press MENU key to exit configuration menu, if required
        
3. Reboot the Cisco IP phone

   The Cisco IP phone may automatically reboot and download the upgrade
   from the TFTP server.  If the phone does not reboot or download from 
   the TFTP server, reboot the Cisco IP phone by disconnecting and 
   reconnecting the power adaptor, or if inline power is used, disconnect
   and reconnect the ethernet cable.

4. Verify the software version

   3.1  Press the MENU key
   3.2  Select Settings > Status > Firmware Versions
   3.3  Check the software version
