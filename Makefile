DIR = /usr/share/licenses/common
DESTDIR =


DIRS = CeCILL1 CeCILL2 CeCILL-B CeCILL-C EUPL1.0 EUPL1.1 FAL1.2 FAL1.3
EUPL = {bg,cs,da,de,el,en,es,et,fi,fr,hu,it,lt,lv,mt,nl,pl,pt,ro,sk,sl,sv}

MISC = AAL ACDL AFL{1.1,1.2,2.0,2.1,3.0} AGPL{1,2,3} Apache{1.0,1.1,2.0} APSL{1.0,1.1,1.2,2.0} Arphic Artistic{1.0,2.0} \
       BSD BSL \
       CATOSL1.1 \
       CC0 CDDL Cool CPAL CPL CPOL1.02 Cryptix CUA-OPL DSL \
       ECL{1.0,2.0} ECos2.0 EFL{1,2}  Entessa EPL EUDataGrid Expat \
       Fair FDL{1.1,1.2,1.3} Frameworx FreeBSDDL Freetype \
       GNUAllPermissive GNUVerbatim GPL{1,2,3} \
       HESSLA HPND \
       ICS imlib2 IntelACPI IOSL IPA IPL \
       JOSL \
       LDP1 LGPL{2.0,2.1,3} LPL1.02 LPPL1.{0,1,2,3{,a,b,c}} \
       MIT Motosoto MPL{1.0,1.1,2.0} Ms-PL Ms-RL Multics \
       NASA1.3 Naumen nBSD NGPL Nokia none NOSL NPL{1.0,1.1} NPOSL3.0 NSCA NTP \
       OCL OCLC2.0 ODbl OFL1.1 OFPL OGTSL OpenPub OSL{1.0,2.0,2.1,3.0} \
       pBSD PerlArtistic PHP{2.01,2.02,3.0,3.01} PostgreSQL public{,-bin} \
       QPL \
       RPL{1.1,1.3,1.5} RPSL RSCPL Ruby \
       sBSD SFL SimPL-2.0 SISSL{1.0,1.1,1.2} Sleepycat SPL \
       VSL W3C Watcom WTFPL{1,2} WXwindows Weaker Weakest \
       Xnet XOSL \
       YPL{1.0,1.1} \
       zlib ZPL{1.0,2.0,2.1}


all:


install:
	mkdir -p "$(DESTDIR)$(DIR)"
	mkdir -p $(foreach D, $(DIRS), "$(DESTDIR)$(DIR)/$(D)")
	install -m444 common/CeCILL1/{english,french} "$(DESTDIR)$(DIR)"/CeCILL1
	install -m444 common/CeCILL2/{english,french} "$(DESTDIR)$(DIR)"/CeCILL2
	install -m444 common/CeCILL-B/{english,french} "$(DESTDIR)$(DIR)"/CeCILL-B
	install -m444 common/CeCILL-C/{english,french} "$(DESTDIR)$(DIR)"/CeCILL-C
	install -m444 common/EUPL1.0/$(EUPL) "$(DESTDIR)$(DIR)"/EUPL1.0
	install -m444 common/EUPL1.1/$(EUPL) "$(DESTDIR)$(DIR)"/EUPL1.1
	install -m444 common/FAL1.2/{french,spanish} "$(DESTDIR)$(DIR)"/FAL1.2
	install -m444 common/FAL1.3/{english,french} "$(DESTDIR)$(DIR)"/FAL1.3
	install -m444 $(foreach L, $(MISC), common/$(L)) "$(DESTDIR)$(DIR)"


uninstall:
	-rm -f "$(DESTDIR)$(DIR)"/CeCILL{1,2,-B,-C}/{english,french}
	-rm -f "$(DESTDIR)$(DIR)"/EUPL{1.0,1.1}/$(EUPL)
	-rm -f "$(DESTDIR)$(DIR)"/FAL1.2/{french,spanish}
	-rm -f "$(DESTDIR)$(DIR)"/FAL1.3/{english,french}
	-rm -f $(foreach L, $(MISC), "$(DESTDIR)$(DIR)"/$(L))
	-rmdir $(foreach D, $(DIRS), "$(DESTDIR)$(DIR)/$(D)")
	-rmdir "$(DESTDIR)$(DIR)"


clean:
