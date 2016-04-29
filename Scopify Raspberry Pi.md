

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office"
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8">
<meta name=3DProgId content=3DOneNote.File>
<meta name=3DGenerator content=3D"Microsoft OneNote 15">
<link id=3DMain-File rel=3DMain-File href=3DNewSection2.htm>
<link rel=3DFile-List href=3D"NewSection2_files/filelist.xml">
</head>

<body lang=3Den-US style=3D'font-family:Calibri;font-size:11.0pt'>

<div style=3D'direction:ltr;border-width:100%'>

<div style=3D'direction:ltr;margin-top:0in;margin-left:0in;width:7.6375in'>

<div style=3D'direction:ltr;margin-top:0in;margin-left:.0333in;width:4.5805=
in'>

<p style=3D'margin:0in;font-family:"Calibri Light";font-size:20.0pt'>Instructions
for Creating a Scopify Pi</p>

</div>

<div style=3D'direction:ltr;margin-top:.0388in;margin-left:.0333in;width:2.=
3861in'>

</div>

<div style=3D'direction:ltr;margin-top:.4305in;margin-left:0in;width:7.6375in'>

<ul style=3D'margin-left:.0326in;direction:ltr;unicode-bidi:embed;margin-top:
 0in;margin-bottom:0in'>
 <p style=3D'margin:0in;font-family:Calibri;font-size:11.0pt'>These steps will
 allow a Raspberry Pi of nearly any form to become a WiFi-&gt;Serial Bridge.
 The main purpose of this code is to enable telescopes to be controlled
 wirelessly from a phone, tablet, or computer. The capability of a WiFi bridge
 is certainly useful in other fields but that is not the main goal of this
 project.</p>
 <p style=3D'margin:0in;font-family:Calibri;font-size:11.0pt'>&nbsp;</p>
 <p style=3D'margin:0in;font-family:Calibri;font-size:11.0pt'>With these
 instructions, I will go into the maximum detail that I think someone who has a
 Raspberry Pi will need. This means that I won't spoon feed, but I will give
 every step required. If you think I should add or subtract, please leave a
 comment in the discussion board.</p>
 <p style=3D'margin:0in;font-family:Calibri;font-size:11.0pt'>&nbsp;</p>
 <ol type=3D1 style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
  margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
  font-weight:normal;font-style:normal'>
  <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
      font-style:normal;font-family:Calibri;font-size:11.0pt'>Download and
      unzip Raspbian Jesse Lite from: </span><a
      href=3D"https://www.raspberrypi.org/downloads/raspbian/"><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-family:Calibri;
      font-size:11.0pt'>https://www.raspberrypi.org/downloads/raspbian/</span></a><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
      font-style:normal;font-family:Calibri;font-size:11.0pt'> </span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>Using your program of
      choice, image an SD-card that fits your Pi with that the Raspbian Jesse
      .bin file. I use Win32Disk Imager on my Windows 10 PC.</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>With Raspbian on the SD
      Card, put it into the Pi. Hook the Pi up to a keyboard, WiFi adapter (if
      not built in), monitor, and finally power.</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>The Pi will boot up and ask
      for a login and password. These will be the defaults: Login =3D</span><span
      style=3D'font-family:Calibri;font-size:16.0pt'> pi</span><span
      style=3D'font-family:Calibri;font-size:11.0pt'> , Password =3D </span><span
      style=3D'font-family:Calibri;font-size:16.0pt'>raspberry</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>This is a good time to
      remind you that case counts in Linux. &quot;Raspberry&quot; wouldn't work
      for the password. Similarly as we are making changes to files, case
      counts. I spent considerable time diagnosing a problem where I had typed:
      ttyama0 where the correct term was ttyAMA0. </span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>The first thing to do is to
      enable WiFi.</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>Let's talk about WiFi. We'll
      be creating a soft WiFi Access point using the WiFi adapter. This is
      do-able with many of the RPi compatible adapters, but with the current
      version of Raspbian it requires recompiling drivers, recompiling hostapd,
      and installing a bunch of required libraries. I've done it, it works,
      it's a pain. For a few bucks more than the cheap Edimax adapter that
      everybody has, you can get the &quot;Official&quot; Raspberry Pi adapter
      that uses a Broadcom Chipset that just works. It's the same chipset as
      the Raspberry Pi 3. It makes life much easier, so that's what I'll be
      assuming that you have. If you'd like help in getting other adapters to
      work, leave a comment in the discussion forum.</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>So, back to enabling WiFi:
      Type:</span></li>
  <ol type=3Da style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
   margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:16.0pt;
   font-weight:bold;font-style:normal'>
   <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:midde;
       font-weight:bold'><span style=3D'font-family:Calibri;font-size:16.0pt;
       font-weight:bold;font-style:normal;font-weight:bold;font-family:Calibri;
       font-size:16.0pt'>sudo nano /etc/wpa_supplicant/wpa_supplicant.conf</span></li>
  </ol>
  <ol type=3Da style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
   margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
   font-weight:normal;font-style:normal'>
   <li value=3D2 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
       font-style:normal;font-family:Calibri;font-size:11.0pt'>When that opens
       in nano (the program that we'll use to edit files), use the keyboard to
       scroll to the end of the text and add the following lines:</span></li>
   <ol type=3D1 style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
    margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:16.0pt;
    font-weight:bold;font-style:normal'>
    <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;
        font-weight:bold'><span style=3D'font-family:Calibri;font-size:16.0pt;
        font-weight:bold;font-style:normal;font-weight:bold;font-family:Calibri;
        font-size:16.0pt'>network=3D{</span></li>
   </ol>
  </ol>
 </ol>
 <p style=3D'margin:0in;margin-left:1.5in;font-family:Calibri;font-size:16.0pt'><span
 style=3D'font-weight:bold'>ssid=3D&quot;ssid&quot;</span></p>
 <p style=3D'margin:0in;margin-left:1.5in;font-family:Calibri;font-size:16.0pt'><span
 style=3D'font-weight:bold'>psk=3D&quot;password&quot;</span></p>
 <p style=3D'margin:0in;margin-left:1.5in;font-family:Calibri;font-size:16.0pt'><span
 style=3D'font-weight:bold'>} </span></p>
 <ol type=3D1 style=3D'margin-left:1.125in;direction:ltr;unicode-bidi:embed;
  margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:16.0pt;
  font-weight:bold;font-style:normal'>
  <li value=3D2 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;
      font-weight:bold;color:#E84C22'><span style=3D'font-family:Calibri;
      font-size:16.0pt;font-weight:bold;font-style:normal;font-weight:bold;
      font-family:Calibri;font-size:16.0pt'>NOTE!!! We haven't yet changed
the
      keyboard layout and the &quot; is not in the normal place if you are
      using a U.S. keyboard. For me quote was shift+2 (usually @). We'll fix
      this later.</span></li>
 </ol>
 <ol type=3Di style=3D'margin-left:1.125in;direction:ltr;unicode-bidi:embed;
  margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
  font-weight:normal;font-style:normal'>
  <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
      font-style:normal;font-family:Calibri;font-size:11.0pt'>Use the quotes
      but replace ssid and password with the correct info for whatever WiFi
      connection you have right now. This is NOT where we are creating a WiFi
      access point for use in the field. The idea here is that you'll be able
      to configure the RPi via WiFi without having to have a monitor or
      keyboard connected to it.</span></li>
 </ol>
 <ol type=3Da style=3D'margin-left:.75in;direction:ltr;unicode-bidi:embed;
  margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
  font-weight:normal;font-style:normal'>
  <li value=3D3 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
      font-style:normal;font-family:Calibri;font-size:11.0pt'>With the network
      info added to wpa_supplicant.conf, type: &quot;</span><span
      style=3D'font-family:Calibri;font-size:16.0pt;font-weight:bold;font-style:
      normal;font-weight:bold;font-family:Calibri;font-size:16.0pt'>ctrl+o</span><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
      font-style:normal;font-family:Calibri;font-size:11.0pt'>&quot; (the
      control button and the letter o at the same time). Nano will then prompt
      you to save wpa_supplicant.conf. Hit enter to accept. The type &quot;</span><span
      style=3D'font-family:Calibri;font-size:16.0pt;font-weight:bold;font-style:
      normal;font-weight:bold;font-family:Calibri;font-size:16.0pt'>ctrl+x</span><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
      font-style:normal;font-family:Calibri;font-size:11.0pt'>&quot; to exit
      nano.</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>You should now be able to
      connect to WiFi. For good measure, let's reboot the Pi to make sure
      wpa_supplicant.conf get's loaded: Type:</span><span style=3D'font-weight:
      bold;font-family:Calibri;font-size:16.0pt'> sudo reboot</span><span
      style=3D'font-family:Calibri;font-size:11.0pt'>. </span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>Once the RPi reboots, type: </span><span
      style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>ifconfig
      wlan0 </span><span style=3D'font-family:Calibri;font-size:11.0pt'>you
      should see an ip address in the inet addr field. If you don't please
      consult the googles for help on getting WiFi up. </span></li>
 </ol>
 <ol type=3D1 style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
  margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
  font-weight:normal;font-style:normal'>
  <li value=3D9 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
      font-style:normal;font-family:Calibri;font-size:11.0pt'>With WiFi
      enabled, let's update the repositories. Type: </span><span
      style=3D'font-family:Calibri;font-size:16.0pt;font-weight:bold;font-style:
      normal;font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
      apt-get update </span><span style=3D'font-family:Calibri;font-size:11.0pt;
      font-weight:normal;font-style:normal;font-family:Calibri;font-size:11.0pt'>this
      may take a while. Accept any thing that it asks about adding additional
      data due to the update. Once that is done type: </span><span
      style=3D'font-family:Calibri;font-size:16.0pt;font-weight:bold;font-style:
      normal;font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
      apt-get upgrade</span><span style=3D'font-family:Calibri;font-size:11.0pt;
      font-weight:normal;font-style:normal;font-family:Calibri;font-size:11.0pt'>
      . This will also take a while. Again say yes (type Y) to whatever it
      asks.</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span style=3D'font-family:Calibri;font-size:11.0pt'>Ok now that we can access
      the apt-get repositories, let's install some software:</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>Type:</span><span
      style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'> sudo
      apt-get install ser2net dnsmasq hostapd</span><span style=3D'font-family:
      Calibri;font-size:11.0pt'><span style=3D'mso-spacerun:yes'>  </span>.
      Again, type Y for whatever it asks. </span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>We now need to disable
      dnsmasq and hostapd from coming up on their own upon reboot. We want to
      control when they operate:</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>Type: </span><span
      style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
      systemctl disable dnsmasq </span><span style=3D'font-family:Calibri;
      font-size:11.0pt'>then </span><span style=3D'font-weight:bold;font-fa=
mily:
      Calibri;font-size:16.0pt'>sudo systemctl disable hostapd</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>Next we'll configure 
 bunch
      of OS features using the built in RPi configuration GUI.</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>Type: </span><span
      style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
      raspi-config</span></li>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-family:Calibri;font-size:11.0pt'>We'll go down the list of
      options:</span></li>
  <ol type=3D1 style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
   margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
   font-weight:normal;font-style:normal'>
   <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
       font-style:normal;font-family:Calibri;font-size:11.0pt'>Expand
       Filesystem. Do it.</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Change User Password: Your
       call here. I changed the password to something easier to type than
       raspberry.</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Boot Options: No changes
       here</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Wait for Network at Boot:
       Change to Yes. This makes the script to discover if we are connected to
       a network work correctly.</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Internationalization
       Options: Go into the sub menu</span></li>
   <ol type=3Di style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
    margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
    font-weight:normal;font-style:normal'>
    <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
        style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
        font-style:normal;font-family:Calibri;font-size:11.0pt'>I1 Change
        Local: Scroll Down choose the correct local for where you are. I'm in
        the US and choose all the &quot;us&quot; options.</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
        style=3D'font-family:Calibri;font-size:11.0pt'>I2 Change Timezone. Do it.</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
        style=3D'font-family:Calibri;font-size:11.0pt'>I3 Change Keyboard Layout.
        Pick what you have. I picked Generic 104-key PC. Then choose the
        layout. If you don't live in Great Brittan choose other and then pick
        the country you are in. I'm in the U.S. and chose English (US)</span></li>
   </ol>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Enable Camera: No change
       here</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Add to Rastrack: No change
       here</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Overclock: No Change here</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Advanced Options: Go into
       the sub menu.</span></li>
   <ol type=3Di style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
    margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:11.0pt;
    font-weight:normal;font-style:normal'>
    <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
        style=3D'font-family:Calibri;font-size:11.0pt;font-weight:normal;
        font-style:normal;font-family:Calibri;font-size:11.0pt'>I changed the
        HOSTNAME to: scope for easy identification on the network. </span><=
/li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
        style=3D'font-family:Calibri;font-size:11.0pt'>Enable SSH </span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
        style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>DISABLE
        Serial</span><span style=3D'font-family:Calibri;font-size:11.0pt'> (I
        know this doesn't make sense, but if you have it enabled here, it
        prevents ser2net from operating)</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
        style=3D'font-family:Calibri;font-size:11.0pt'>No further changes.</span></li>
   </ol>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Click finish and then </span><span
       style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
       reboot</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Use your new password=
 to
       log in. Or fire up your PC / Mac and start using it to configure the
       RPi. I use Putty to SSH into the RPi. Raspbian has zero configuration
       network enabled by default, so you don't need to know the IP address=
 of
       your RPi to SSH into it. Simply type &quot;yourhostname.local&quot; into
       putty where it asks for the address. In my case it was: scope.local.
       Easy. </span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>If you are at a PC you can
       now transfer the files provided in Github to your RPi. You can use
       secure copy (scp) or in Windows you can use WinSCP. I like WinSCP.</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Transfer the files to the
       home directory of the Pi which is what comes up when you connect with
       WinSCP. That directory is /home/pi </span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>With the files transferred
       over, go back to your RPi's keyboard or start your SSH session.</spa=
n></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>We'll move the files to the
       correct place now.</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Make sure you are in your
       home directory. Type: </span><span style=3D'font-weight:bold;font-family:
       Calibri;font-size:16.0pt'>cd /home/pi</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Type the following: </span></li>
   <ol type=3Di style=3D'margin-left:.375in;direction:ltr;unicode-bidi:embed;
    margin-top:0in;margin-bottom:0in;font-family:Calibri;font-size:16.0pt;
    font-weight:bold;font-style:normal'>
    <li value=3D1 style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;
        font-weight:bold'><span style=3D'font-family:Calibri;font-size:16.0pt;
        font-weight:bold;font-style:normal;font-weight:bold;font-family:Calibri;
        font-size:16.0pt'>sudo mv ser2net.conf /etc/ser2net.conf</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-weight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
        mv rc.local /etc/rc.local</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-weight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
        mv hostapd.conf /etc/hostapd/hostapd.conf</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-weight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-siz
:16.0pt'>sudo
        mv access_point.conf /etc/dnsmasq.d/access_point.conf</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-we=
ight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size=
:16.0pt'>sudo
        mv hostapd-systemd.service /lib/systemd/system/hostapd-system.servi=
ce</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-we=
ight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size=
:16.0pt'>sudo
        mv checker.sh /usr/sbin/checker.sh</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-weight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>cd
        /etc</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-weight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
        chmod +x rc.local</span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-weight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
        chown root:root rc.local </span></li>
    <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle;font-weight:
        bold'><span style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt'>sudo
        reboot</span></li>
   </ol>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>That's it folks. The rest
       is just details. You may want to modify how I've got the WiFi access
       point setup. You can change the name of the AP, the pre shared key, and
       whether it's an open or close network in hostapd.conf. You can change
       the DHCP IP addressing scheme in access_point.conf . You can comple
ely
       forgo the attempt to connect to your local WiFi network by removing =
the
       info from wpa_supplicant.conf that we initially setup, checker.sh wi=
ll
       then always bring up the hostapd and dnsmaq services upon boot.
       Alternately, you can remove checker.sh completely from rc.local, then
       enable the hostapd and dnsmasq services using the command: systemctl
       enable (your service here).</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>checker.sh runs at th=
e end
       of the boot up cycle. It checks if the WiFi adapter has an assigned IP
       address. If if does, the script does nothing and allows the wlan0
       interface to continue to be connected to the network it joined. I find
       it very convenient to have the RPi connect to my local network so th=
at
       my PC's, Phones, and tablets can all connect to the scope without having
       to connect to the scopes WiFi access point.</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>If the wlan0 interface does
       not have an IP address, then checker.sh starts the hostapd and dnsmasq
       services which starts the AP and the DHCP server. This will bring up a
       new WiFi network that you'll need to connect to in order to talk to the
       scope / mount. </span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Since zero-conf networking
       is enabled. Set your astro software to look for your hostname.local,
       again scope.local for me. This way it doesn't matter if the RPi is
       connected to your home WiFi or if it created it's own AP, the address in
       your software ( like Sky Safari) will always be scope.local</span></li>
   <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
       style=3D'font-family:Calibri;font-size:11.0pt'>Let's talk about ser2net.
       The configuration is pretty straight forward. In the last lines of t=
he
       /etc/ser2net.conf file it configures which ports to listen to for serial
       data. I choose port 4030 since that was a Sky Safari default. If you
       want to change ports or need to change the baud rate or other serial
       configurations, then use nano to modify ser2net.conf to your telescopes
       requirements. The comments in ser2net.conf are pretty good, you'll
       figure it out.</span></li>
  </ol>
  <li style=3D'margin-top:0;margin-bottom:0;vertical-align:middle'><span
      style=3D'font-weight:bold;font-family:Calibri;font-size:16.0pt;color:#5B9BD5'>Setting
      up a Serial port from the RPi to your mount / telescope</span><span
      style=3D'font-family:Calibri;font-size:11.0pt'><span
      style=3D'mso-spacerun:yes'>  </span></span></li>
 </ol>
</ul>

</div>

</div>

</div>

</body>

</html>
