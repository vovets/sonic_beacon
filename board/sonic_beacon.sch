<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="sonic_beacon">
<packages>
<package name="8S2">
<description>&lt;b&gt;8S2&lt;/b&gt; 8-lead, 0.208 Body&lt;p&gt;
Plastic Small Outline Package (EIAJ)&lt;br&gt;
Source: http://www.atmel.com/dyn/resources/prod_documents/2535S.pdf</description>
<wire x1="-2.6" y1="2.65" x2="-2.35" y2="2.9" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.35" y1="2.9" x2="2.6" y2="2.65" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.35" y1="-2.925" x2="2.6" y2="-2.675" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.6" y1="-2.675" x2="-2.35" y2="-2.925" width="0.1524" layer="21" curve="90"/>
<wire x1="2.36" y1="-2.925" x2="-2.34" y2="-2.925" width="0.1524" layer="51"/>
<wire x1="-2.34" y1="2.9" x2="2.36" y2="2.9" width="0.1524" layer="51"/>
<wire x1="-2.21" y1="2.9" x2="-2.34" y2="2.9" width="0.1524" layer="21"/>
<wire x1="-1.59" y1="2.9" x2="-0.95" y2="2.9" width="0.1524" layer="21"/>
<wire x1="-0.32" y1="2.9" x2="0.32" y2="2.9" width="0.1524" layer="21"/>
<wire x1="0.95" y1="2.9" x2="1.59" y2="2.9" width="0.1524" layer="21"/>
<wire x1="2.21" y1="2.9" x2="2.36" y2="2.9" width="0.1524" layer="21"/>
<wire x1="2.2" y1="-2.925" x2="2.33" y2="-2.925" width="0.1524" layer="21"/>
<wire x1="1.59" y1="-2.925" x2="0.94" y2="-2.925" width="0.1524" layer="21"/>
<wire x1="0.32" y1="-2.925" x2="-0.33" y2="-2.925" width="0.1524" layer="21"/>
<wire x1="-0.95" y1="-2.925" x2="-1.59" y2="-2.925" width="0.1524" layer="21"/>
<wire x1="-2.21" y1="-2.925" x2="-2.34" y2="-2.925" width="0.1524" layer="21"/>
<wire x1="-2.6" y1="2.65" x2="-2.6" y2="-2.665" width="0.1524" layer="21"/>
<wire x1="2.6" y1="-2.675" x2="2.6" y2="2.65" width="0.1524" layer="21"/>
<circle x="-1.42" y="-1.115" radius="0.5" width="0.0508" layer="21"/>
<smd name="1" x="-1.905" y="-3.404" dx="0.5" dy="1.4" layer="1"/>
<smd name="2" x="-0.645" y="-3.404" dx="0.5" dy="1.4" layer="1"/>
<smd name="3" x="0.625" y="-3.404" dx="0.5" dy="1.4" layer="1"/>
<smd name="4" x="1.895" y="-3.404" dx="0.5" dy="1.4" layer="1"/>
<smd name="8" x="-1.905" y="3.404" dx="0.5" dy="1.4" layer="1"/>
<smd name="7" x="-0.635" y="3.404" dx="0.5" dy="1.4" layer="1"/>
<smd name="6" x="0.635" y="3.404" dx="0.5" dy="1.4" layer="1"/>
<smd name="5" x="1.905" y="3.404" dx="0.5" dy="1.4" layer="1"/>
<text x="-2.8575" y="-2.159" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.064" y="-2.159" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.08" y1="2.95" x2="-1.73" y2="3.85" layer="51"/>
<rectangle x1="-0.81" y1="2.95" x2="-0.46" y2="3.85" layer="51"/>
<rectangle x1="0.46" y1="2.95" x2="0.81" y2="3.85" layer="51"/>
<rectangle x1="1.73" y1="2.95" x2="2.08" y2="3.85" layer="51"/>
<rectangle x1="1.72" y1="-3.85" x2="2.07" y2="-2.95" layer="51"/>
<rectangle x1="0.45" y1="-3.85" x2="0.8" y2="-2.95" layer="51"/>
<rectangle x1="-0.82" y1="-3.85" x2="-0.47" y2="-2.95" layer="51"/>
<rectangle x1="-2.08" y1="-3.85" x2="-1.73" y2="-2.95" layer="51"/>
</package>
<package name="SC-70">
<description>SC-70 (SOT-323)</description>
<wire x1="-1.05" y1="0.62" x2="1.05" y2="0.62" width="0.127" layer="51"/>
<wire x1="1.05" y1="0.62" x2="1.05" y2="-0.62" width="0.127" layer="51"/>
<wire x1="1.05" y1="-0.62" x2="-1.05" y2="-0.62" width="0.127" layer="51"/>
<wire x1="-1.05" y1="-0.62" x2="-1.05" y2="0.62" width="0.127" layer="51"/>
<smd name="1" x="-0.65" y="-0.95" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="-0.95" dx="0.7" dy="0.9" layer="1"/>
<smd name="3" x="0" y="0.95" dx="0.7" dy="0.9" layer="1"/>
</package>
<package name="HC0903A">
<pad name="1" x="0" y="2" drill="0.8" shape="square"/>
<pad name="2" x="0" y="-2" drill="0.8" shape="octagon"/>
<circle x="0" y="0" radius="4.75" width="0.127" layer="21"/>
<wire x1="-2.5" y1="4" x2="-2.5" y2="6.25" width="0.127" layer="21"/>
<wire x1="-2.5" y1="6.25" x2="2.5" y2="6.25" width="0.127" layer="21"/>
<wire x1="2.5" y1="6.25" x2="2.5" y2="4" width="0.127" layer="21"/>
<text x="-2.3" y="1.4" size="1.27" layer="21">+</text>
</package>
<package name="PAD">
<smd name="P$1" x="0" y="0" dx="2.54" dy="1.27" layer="1"/>
<text x="-1.27" y="0" size="1.27" layer="25" font="vector" align="center-right">&gt;NAME</text>
</package>
<package name="SOT-23">
<smd name="2" x="0" y="-1.35" dx="1.05" dy="0.6" layer="1" rot="R90"/>
<smd name="3" x="0.95" y="-1.35" dx="1.05" dy="0.6" layer="1" rot="R90"/>
<smd name="1" x="-0.95" y="-1.35" dx="1.05" dy="0.6" layer="1" rot="R90"/>
<smd name="5" x="-0.95" y="1.35" dx="1.05" dy="0.6" layer="1" rot="R90"/>
<smd name="4" x="0.95" y="1.35" dx="1.05" dy="0.6" layer="1" rot="R90"/>
<wire x1="-1.525" y1="0.875" x2="1.525" y2="0.875" width="0.127" layer="51"/>
<wire x1="1.525" y1="0.875" x2="1.525" y2="-0.875" width="0.127" layer="51"/>
<wire x1="1.525" y1="-0.875" x2="-1.525" y2="-0.875" width="0.127" layer="51"/>
<wire x1="-1.525" y1="-0.875" x2="-1.525" y2="0.875" width="0.127" layer="51"/>
</package>
<package name="R0805W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; wave soldering&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.0525" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="A/3216-18W">
<description>&lt;b&gt;Chip Capacitor Type KEMET A / EIA 3216-18 Wave solder&lt;/b&gt;&lt;p&gt;
KEMET S / EIA 3216-12</description>
<wire x1="-1.45" y1="0.6" x2="1.45" y2="0.6" width="0.1016" layer="51"/>
<wire x1="1.45" y1="0.6" x2="1.45" y2="-0.6" width="0.1016" layer="51"/>
<wire x1="1.45" y1="-0.6" x2="-1.45" y2="-0.6" width="0.1016" layer="51"/>
<wire x1="-1.45" y1="-0.6" x2="-1.45" y2="0.6" width="0.1016" layer="51"/>
<smd name="+" x="1.475" y="0" dx="2.15" dy="1.8" layer="1"/>
<smd name="-" x="-1.475" y="0" dx="2.15" dy="1.8" layer="1"/>
<text x="-1.95" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.95" y="-2.325" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="-0.6" x2="-1.475" y2="0.6" layer="51"/>
<rectangle x1="1.475" y1="-0.6" x2="1.6" y2="0.6" layer="51"/>
<rectangle x1="0.8" y1="-0.625" x2="1.1" y2="0.625" layer="51"/>
</package>
<package name="C0805K">
<description>&lt;b&gt;Ceramic Chip Capacitor KEMET 0805 reflow solder&lt;/b&gt;&lt;p&gt;
Metric Code Size 2012</description>
<wire x1="-0.925" y1="0.6" x2="0.925" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.6" x2="-0.925" y2="-0.6" width="0.1016" layer="51"/>
<smd name="1" x="-1" y="0" dx="1.3" dy="1.6" layer="1"/>
<smd name="2" x="1" y="0" dx="1.3" dy="1.6" layer="1"/>
<text x="-1" y="0.875" size="1.016" layer="25">&gt;NAME</text>
<text x="-1" y="-1.9" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1" y1="-0.65" x2="-0.5" y2="0.65" layer="51"/>
<rectangle x1="0.5" y1="-0.65" x2="1" y2="0.65" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="ATTINY85">
<wire x1="0" y1="0" x2="0" y2="-12.7" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="15.24" y2="-12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="-12.7" x2="15.24" y2="0" width="0.254" layer="94"/>
<wire x1="15.24" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="PB5" x="-5.08" y="-2.54" length="middle"/>
<pin name="PB3" x="-5.08" y="-5.08" length="middle"/>
<pin name="PB4" x="-5.08" y="-7.62" length="middle"/>
<pin name="GND" x="-5.08" y="-10.16" length="middle"/>
<pin name="VCC" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="PB2" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="PB1" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="PB0" x="20.32" y="-10.16" length="middle" rot="R180"/>
<text x="7.62" y="2.54" size="1.27" layer="95" align="top-center">&gt;NAME</text>
<text x="7.62" y="-15.24" size="1.27" layer="96" align="bottom-center">&gt;VALUE</text>
</symbol>
<symbol name="N-MOSFET">
<wire x1="-1.27" y1="0" x2="-0.254" y2="0.381" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="0.381" x2="-0.254" y2="-0.381" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-0.381" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="0" x2="-0.889" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-2.794" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="3.048" x2="1.27" y2="3.048" width="0.1524" layer="94"/>
<wire x1="1.27" y1="3.048" x2="1.27" y2="0.762" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.762" x2="1.27" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="-2.794" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.794" x2="0" y2="-2.794" width="0.1524" layer="94"/>
<wire x1="1.778" y1="0" x2="0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="0.762" y1="0" x2="1.27" y2="0.762" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.762" x2="1.778" y2="0" width="0.1524" layer="94"/>
<wire x1="1.778" y1="0.762" x2="0.762" y2="0.762" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="2.032" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="2.032" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-2.032" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="0" x2="-0.381" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-0.254" x2="-0.381" y2="0.254" width="0.254" layer="94"/>
<wire x1="-0.381" y1="0.254" x2="-0.889" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.016" y2="0.127" width="0.254" layer="94"/>
<wire x1="1.016" y1="0.127" x2="1.524" y2="0.127" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.127" x2="1.27" y2="0.508" width="0.254" layer="94"/>
<circle x="0" y="-2.794" radius="0.3592" width="0" layer="94"/>
<circle x="0" y="-2.032" radius="0.3592" width="0" layer="94"/>
<circle x="0" y="3.048" radius="0.3592" width="0" layer="94"/>
<text x="2.54" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="1.27" x2="-1.524" y2="2.54" layer="94"/>
<rectangle x1="-2.032" y1="-2.54" x2="-1.524" y2="-1.27" layer="94"/>
<rectangle x1="-2.032" y1="-0.762" x2="-1.524" y2="0.762" layer="94"/>
<pin name="G" x="-5.08" y="-2.54" visible="off" length="short" direction="pas"/>
<pin name="D" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="S" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="HC0903A">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="0" y2="-7.62" width="0.254" layer="94"/>
<pin name="+" x="-1.27" y="5.08" visible="pin" length="short" rot="R270"/>
<pin name="-" x="-1.27" y="-10.16" visible="pin" length="short" rot="R90"/>
<text x="5.08" y="2.54" size="1.27" layer="95">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.397" y="-0.1778" size="1.778" layer="95" align="center-right">&gt;NAME</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="LP2981">
<pin name="GND" x="-12.7" y="0" length="middle"/>
<pin name="VIN" x="-12.7" y="2.54" length="middle"/>
<pin name="ON/!OFF" x="-12.7" y="-2.54" length="middle"/>
<pin name="VOUT" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="NC" x="12.7" y="-2.54" length="middle" rot="R180"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-7.62" y="6.35" size="1.27" layer="95" align="center-left">&gt;NAME</text>
<text x="-7.62" y="-6.35" size="1.27" layer="96" align="center-left">&gt;VALUE</text>
</symbol>
<symbol name="R-EU">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="CPOL">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<text x="1.143" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="-0.5842" y="0.4064" size="1.27" layer="94" rot="R90">+</text>
<text x="1.143" y="-4.5974" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-2.54" x2="1.651" y2="-1.651" layer="94"/>
<pin name="-" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="+" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATTINY85-20SU" prefix="U">
<gates>
<gate name="G$1" symbol="ATTINY85" x="-7.62" y="5.08"/>
</gates>
<devices>
<device name="" package="8S2">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="PB0" pad="5"/>
<connect gate="G$1" pin="PB1" pad="6"/>
<connect gate="G$1" pin="PB2" pad="7"/>
<connect gate="G$1" pin="PB3" pad="2"/>
<connect gate="G$1" pin="PB4" pad="3"/>
<connect gate="G$1" pin="PB5" pad="1"/>
<connect gate="G$1" pin="VCC" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2N7002W" prefix="Q">
<description>&lt;b&gt;2N7002W&lt;/b&gt;

&lt;p&gt;Small Signal MOSFET&lt;/p&gt;
&lt;p&gt;60 V, 340 mA, Single, N−Channel, SC−70&lt;/p&gt;
&lt;p&gt;ON Semiconductor&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="N-MOSFET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SC-70">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HC0903A" prefix="X">
<description>&lt;b&gt;HC0903A&lt;/b&gt;
&lt;p&gt;SoniCrest Electro-Magnetic Sound Generators by JL World&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="HC0903A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HC0903A">
<connects>
<connect gate="G$1" pin="+" pad="1"/>
<connect gate="G$1" pin="-" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="WIREPAD" prefix="J" uservalue="yes">
<gates>
<gate name="G$1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PAD">
<connects>
<connect gate="G$1" pin="P" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LP2981-33DBVR" prefix="U">
<gates>
<gate name="G$1" symbol="LP2981" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT-23">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="NC" pad="4"/>
<connect gate="G$1" pin="ON/!OFF" pad="3"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C_TANT" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CPOL" x="0" y="1.27"/>
</gates>
<devices>
<device name="" package="A/3216-18W">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C_CER" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="1.27"/>
</gates>
<devices>
<device name="" package="C0805K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="sonic_beacon" deviceset="ATTINY85-20SU" device=""/>
<part name="Q1" library="sonic_beacon" deviceset="2N7002W" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="X1" library="sonic_beacon" deviceset="HC0903A" device=""/>
<part name="THR" library="sonic_beacon" deviceset="WIREPAD" device=""/>
<part name="VIN" library="sonic_beacon" deviceset="WIREPAD" device=""/>
<part name="GND@2" library="sonic_beacon" deviceset="WIREPAD" device=""/>
<part name="U2" library="sonic_beacon" deviceset="LP2981-33DBVR" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="R1" library="sonic_beacon" deviceset="R" device="" value="470"/>
<part name="C1" library="sonic_beacon" deviceset="C_TANT" device="" value="4.7uF"/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="C2" library="sonic_beacon" deviceset="C_CER" device="" value="4.7uF"/>
<part name="C3" library="sonic_beacon" deviceset="C_CER" device="" value="0.1uF"/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="INC" library="sonic_beacon" deviceset="WIREPAD" device=""/>
<part name="DEC" library="sonic_beacon" deviceset="WIREPAD" device=""/>
<part name="GND@1" library="sonic_beacon" deviceset="WIREPAD" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="C4" library="sonic_beacon" deviceset="C_CER" device="" value="1n"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="-7.62" y="5.08"/>
<instance part="Q1" gate="G$1" x="22.86" y="-2.54"/>
<instance part="P+1" gate="VCC" x="12.7" y="10.16"/>
<instance part="GND4" gate="1" x="22.86" y="-10.16"/>
<instance part="P+3" gate="VCC" x="22.86" y="22.86"/>
<instance part="X1" gate="G$1" x="24.13" y="12.7" smashed="yes">
<attribute name="NAME" x="29.21" y="15.24" size="1.27" layer="95"/>
<attribute name="VALUE" x="29.21" y="10.16" size="1.27" layer="96"/>
</instance>
<instance part="THR" gate="G$1" x="-35.56" y="-17.78"/>
<instance part="VIN" gate="G$1" x="-35.56" y="-20.32"/>
<instance part="GND@2" gate="G$1" x="-35.56" y="-22.86"/>
<instance part="U2" gate="G$1" x="7.62" y="-27.94"/>
<instance part="GND3" gate="1" x="-12.7" y="-33.02"/>
<instance part="P+2" gate="VCC" x="-10.16" y="27.94"/>
<instance part="R1" gate="G$1" x="-22.86" y="-15.24"/>
<instance part="C1" gate="G$1" x="-10.16" y="20.32"/>
<instance part="GND5" gate="1" x="-10.16" y="10.16"/>
<instance part="C2" gate="G$1" x="-30.48" y="20.32"/>
<instance part="C3" gate="G$1" x="-20.32" y="20.32"/>
<instance part="P+5" gate="VCC" x="-20.32" y="27.94"/>
<instance part="GND6" gate="1" x="-30.48" y="10.16"/>
<instance part="GND7" gate="1" x="-20.32" y="10.16"/>
<instance part="INC" gate="G$1" x="-35.56" y="0"/>
<instance part="DEC" gate="G$1" x="-35.56" y="-2.54"/>
<instance part="GND@1" gate="G$1" x="-35.56" y="-5.08"/>
<instance part="GND8" gate="1" x="-12.7" y="-10.16"/>
<instance part="P+4" gate="VCC" x="20.32" y="-15.24"/>
<instance part="C4" gate="G$1" x="-12.7" y="-17.78"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB0"/>
<pinref part="Q1" gate="G$1" pin="G"/>
<wire x1="12.7" y1="-5.08" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="-12.7" y1="-30.48" x2="-12.7" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="GND@2" gate="G$1" pin="P"/>
<wire x1="-12.7" y1="-27.94" x2="-12.7" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-22.86" x2="-20.32" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-22.86" x2="-20.32" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-27.94" x2="-12.7" y2="-27.94" width="0.1524" layer="91"/>
<junction x="-12.7" y="-27.94"/>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="-12.7" y1="-27.94" x2="-5.08" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="-"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="-10.16" y1="12.7" x2="-10.16" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="-30.48" y1="12.7" x2="-30.48" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="-20.32" y1="12.7" x2="-20.32" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND@1" gate="G$1" pin="P"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="-33.02" y1="-5.08" x2="-12.7" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="-12.7" y1="-7.62" x2="-12.7" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-12.7" y="-5.08"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<pinref part="X1" gate="G$1" pin="+"/>
<wire x1="22.86" y1="20.32" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="-10.16" y1="22.86" x2="-10.16" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="+"/>
</segment>
<segment>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="-20.32" y1="25.4" x2="-20.32" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VOUT"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="20.32" y1="-25.4" x2="20.32" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="D"/>
<pinref part="X1" gate="G$1" pin="-"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-30.48" y1="25.4" x2="-30.48" y2="22.86" width="0.1524" layer="91"/>
<label x="-30.988" y="25.908" size="1.778" layer="95" font="vector" rot="R90"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-17.78" y1="-15.24" x2="-12.7" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PB2"/>
<wire x1="-12.7" y1="-15.24" x2="15.24" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="12.7" y1="0" x2="15.24" y2="0" width="0.1524" layer="91"/>
<wire x1="15.24" y1="0" x2="15.24" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<junction x="-12.7" y="-15.24"/>
</segment>
</net>
<net name="THR" class="0">
<segment>
<pinref part="THR" gate="G$1" pin="P"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-33.02" y1="-17.78" x2="-27.94" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-17.78" x2="-27.94" y2="-15.24" width="0.1524" layer="91"/>
<label x="-33.02" y="-17.272" size="1.27" layer="95" font="vector"/>
</segment>
</net>
<net name="INC" class="0">
<segment>
<pinref part="INC" gate="G$1" pin="P"/>
<pinref part="U1" gate="G$1" pin="PB3"/>
<wire x1="-33.02" y1="0" x2="-12.7" y2="0" width="0.1524" layer="91"/>
<label x="-33.02" y="0.508" size="1.27" layer="95" font="vector"/>
</segment>
</net>
<net name="DEC" class="0">
<segment>
<pinref part="DEC" gate="G$1" pin="P"/>
<pinref part="U1" gate="G$1" pin="PB4"/>
<wire x1="-33.02" y1="-2.54" x2="-12.7" y2="-2.54" width="0.1524" layer="91"/>
<label x="-33.02" y="-2.032" size="1.27" layer="95" font="vector"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="VIN" gate="G$1" pin="P"/>
<wire x1="-33.02" y1="-20.32" x2="-17.78" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-20.32" x2="-17.78" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="VIN"/>
<wire x1="-17.78" y1="-25.4" x2="-7.62" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="ON/!OFF"/>
<wire x1="-7.62" y1="-25.4" x2="-5.08" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="-30.48" x2="-7.62" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-30.48" x2="-7.62" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-7.62" y="-25.4"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
