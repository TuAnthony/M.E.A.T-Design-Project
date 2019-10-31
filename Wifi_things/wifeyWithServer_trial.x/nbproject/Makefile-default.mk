#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=berkeley_tcp_client_demo.c berkeley_tcp_server_demo.c berkeley_udp_client_demo.c custom_http_app.c custom_ssl_cert.c drv_wifi_config.c generic_tcp_client.c generic_tcp_server.c main.c mpfs_img2.c ping_demo.c smtp_demo.c uart_config.c system.c tcpip/src/announce.c tcpip/src/arp.c tcpip/src/auto_ip.c tcpip/src/berkeley_api.c tcpip/src/common/arc4.c tcpip/src/common/big_int.c tcpip/src/common/delay.c tcpip/src/common/hashes.c tcpip/src/common/helpers.c tcpip/src/common/lcd_blocking.c tcpip/src/common/mpfs2.c tcpip/src/common/rsa.c tcpip/src/common/spi_eeprom.c tcpip/src/common/spi_flash.c tcpip/src/common/spi_ram.c tcpip/src/common/stack_task.c tcpip/src/common/tick.c tcpip/src/common/uart.c tcpip/src/ddns.c tcpip/src/dhcp_client.c tcpip/src/dhcp_server.c tcpip/src/dns_client.c tcpip/src/dns_server.c tcpip/src/ftp.c tcpip/src/http2.c tcpip/src/icmp.c tcpip/src/ip.c tcpip/src/nbns.c tcpip/src/random.c tcpip/src/reboot.c tcpip/src/smtp.c tcpip/src/sntp.c tcpip/src/ssl.c tcpip/src/tcp.c tcpip/src/tcp_performance_test.c tcpip/src/telnet.c tcpip/src/tftp.c tcpip/src/uart_to_tcp_bridge.c tcpip/src/udp.c tcpip/src/udp_performance_test.c tcpip/src/zero_conf_helper.c tcpip/src/zero_conf_link_local.c tcpip/src/zero_conf_link_multicast_dns.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/berkeley_tcp_client_demo.o ${OBJECTDIR}/berkeley_tcp_server_demo.o ${OBJECTDIR}/berkeley_udp_client_demo.o ${OBJECTDIR}/custom_http_app.o ${OBJECTDIR}/custom_ssl_cert.o ${OBJECTDIR}/drv_wifi_config.o ${OBJECTDIR}/generic_tcp_client.o ${OBJECTDIR}/generic_tcp_server.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mpfs_img2.o ${OBJECTDIR}/ping_demo.o ${OBJECTDIR}/smtp_demo.o ${OBJECTDIR}/uart_config.o ${OBJECTDIR}/system.o ${OBJECTDIR}/tcpip/src/announce.o ${OBJECTDIR}/tcpip/src/arp.o ${OBJECTDIR}/tcpip/src/auto_ip.o ${OBJECTDIR}/tcpip/src/berkeley_api.o ${OBJECTDIR}/tcpip/src/common/arc4.o ${OBJECTDIR}/tcpip/src/common/big_int.o ${OBJECTDIR}/tcpip/src/common/delay.o ${OBJECTDIR}/tcpip/src/common/hashes.o ${OBJECTDIR}/tcpip/src/common/helpers.o ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o ${OBJECTDIR}/tcpip/src/common/mpfs2.o ${OBJECTDIR}/tcpip/src/common/rsa.o ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o ${OBJECTDIR}/tcpip/src/common/spi_flash.o ${OBJECTDIR}/tcpip/src/common/spi_ram.o ${OBJECTDIR}/tcpip/src/common/stack_task.o ${OBJECTDIR}/tcpip/src/common/tick.o ${OBJECTDIR}/tcpip/src/common/uart.o ${OBJECTDIR}/tcpip/src/ddns.o ${OBJECTDIR}/tcpip/src/dhcp_client.o ${OBJECTDIR}/tcpip/src/dhcp_server.o ${OBJECTDIR}/tcpip/src/dns_client.o ${OBJECTDIR}/tcpip/src/dns_server.o ${OBJECTDIR}/tcpip/src/ftp.o ${OBJECTDIR}/tcpip/src/http2.o ${OBJECTDIR}/tcpip/src/icmp.o ${OBJECTDIR}/tcpip/src/ip.o ${OBJECTDIR}/tcpip/src/nbns.o ${OBJECTDIR}/tcpip/src/random.o ${OBJECTDIR}/tcpip/src/reboot.o ${OBJECTDIR}/tcpip/src/smtp.o ${OBJECTDIR}/tcpip/src/sntp.o ${OBJECTDIR}/tcpip/src/ssl.o ${OBJECTDIR}/tcpip/src/tcp.o ${OBJECTDIR}/tcpip/src/tcp_performance_test.o ${OBJECTDIR}/tcpip/src/telnet.o ${OBJECTDIR}/tcpip/src/tftp.o ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o ${OBJECTDIR}/tcpip/src/udp.o ${OBJECTDIR}/tcpip/src/udp_performance_test.o ${OBJECTDIR}/tcpip/src/zero_conf_helper.o ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o
POSSIBLE_DEPFILES=${OBJECTDIR}/berkeley_tcp_client_demo.o.d ${OBJECTDIR}/berkeley_tcp_server_demo.o.d ${OBJECTDIR}/berkeley_udp_client_demo.o.d ${OBJECTDIR}/custom_http_app.o.d ${OBJECTDIR}/custom_ssl_cert.o.d ${OBJECTDIR}/drv_wifi_config.o.d ${OBJECTDIR}/generic_tcp_client.o.d ${OBJECTDIR}/generic_tcp_server.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/mpfs_img2.o.d ${OBJECTDIR}/ping_demo.o.d ${OBJECTDIR}/smtp_demo.o.d ${OBJECTDIR}/uart_config.o.d ${OBJECTDIR}/system.o.d ${OBJECTDIR}/tcpip/src/announce.o.d ${OBJECTDIR}/tcpip/src/arp.o.d ${OBJECTDIR}/tcpip/src/auto_ip.o.d ${OBJECTDIR}/tcpip/src/berkeley_api.o.d ${OBJECTDIR}/tcpip/src/common/arc4.o.d ${OBJECTDIR}/tcpip/src/common/big_int.o.d ${OBJECTDIR}/tcpip/src/common/delay.o.d ${OBJECTDIR}/tcpip/src/common/hashes.o.d ${OBJECTDIR}/tcpip/src/common/helpers.o.d ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o.d ${OBJECTDIR}/tcpip/src/common/mpfs2.o.d ${OBJECTDIR}/tcpip/src/common/rsa.o.d ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o.d ${OBJECTDIR}/tcpip/src/common/spi_flash.o.d ${OBJECTDIR}/tcpip/src/common/spi_ram.o.d ${OBJECTDIR}/tcpip/src/common/stack_task.o.d ${OBJECTDIR}/tcpip/src/common/tick.o.d ${OBJECTDIR}/tcpip/src/common/uart.o.d ${OBJECTDIR}/tcpip/src/ddns.o.d ${OBJECTDIR}/tcpip/src/dhcp_client.o.d ${OBJECTDIR}/tcpip/src/dhcp_server.o.d ${OBJECTDIR}/tcpip/src/dns_client.o.d ${OBJECTDIR}/tcpip/src/dns_server.o.d ${OBJECTDIR}/tcpip/src/ftp.o.d ${OBJECTDIR}/tcpip/src/http2.o.d ${OBJECTDIR}/tcpip/src/icmp.o.d ${OBJECTDIR}/tcpip/src/ip.o.d ${OBJECTDIR}/tcpip/src/nbns.o.d ${OBJECTDIR}/tcpip/src/random.o.d ${OBJECTDIR}/tcpip/src/reboot.o.d ${OBJECTDIR}/tcpip/src/smtp.o.d ${OBJECTDIR}/tcpip/src/sntp.o.d ${OBJECTDIR}/tcpip/src/ssl.o.d ${OBJECTDIR}/tcpip/src/tcp.o.d ${OBJECTDIR}/tcpip/src/tcp_performance_test.o.d ${OBJECTDIR}/tcpip/src/telnet.o.d ${OBJECTDIR}/tcpip/src/tftp.o.d ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o.d ${OBJECTDIR}/tcpip/src/udp.o.d ${OBJECTDIR}/tcpip/src/udp_performance_test.o.d ${OBJECTDIR}/tcpip/src/zero_conf_helper.o.d ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o.d ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/berkeley_tcp_client_demo.o ${OBJECTDIR}/berkeley_tcp_server_demo.o ${OBJECTDIR}/berkeley_udp_client_demo.o ${OBJECTDIR}/custom_http_app.o ${OBJECTDIR}/custom_ssl_cert.o ${OBJECTDIR}/drv_wifi_config.o ${OBJECTDIR}/generic_tcp_client.o ${OBJECTDIR}/generic_tcp_server.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mpfs_img2.o ${OBJECTDIR}/ping_demo.o ${OBJECTDIR}/smtp_demo.o ${OBJECTDIR}/uart_config.o ${OBJECTDIR}/system.o ${OBJECTDIR}/tcpip/src/announce.o ${OBJECTDIR}/tcpip/src/arp.o ${OBJECTDIR}/tcpip/src/auto_ip.o ${OBJECTDIR}/tcpip/src/berkeley_api.o ${OBJECTDIR}/tcpip/src/common/arc4.o ${OBJECTDIR}/tcpip/src/common/big_int.o ${OBJECTDIR}/tcpip/src/common/delay.o ${OBJECTDIR}/tcpip/src/common/hashes.o ${OBJECTDIR}/tcpip/src/common/helpers.o ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o ${OBJECTDIR}/tcpip/src/common/mpfs2.o ${OBJECTDIR}/tcpip/src/common/rsa.o ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o ${OBJECTDIR}/tcpip/src/common/spi_flash.o ${OBJECTDIR}/tcpip/src/common/spi_ram.o ${OBJECTDIR}/tcpip/src/common/stack_task.o ${OBJECTDIR}/tcpip/src/common/tick.o ${OBJECTDIR}/tcpip/src/common/uart.o ${OBJECTDIR}/tcpip/src/ddns.o ${OBJECTDIR}/tcpip/src/dhcp_client.o ${OBJECTDIR}/tcpip/src/dhcp_server.o ${OBJECTDIR}/tcpip/src/dns_client.o ${OBJECTDIR}/tcpip/src/dns_server.o ${OBJECTDIR}/tcpip/src/ftp.o ${OBJECTDIR}/tcpip/src/http2.o ${OBJECTDIR}/tcpip/src/icmp.o ${OBJECTDIR}/tcpip/src/ip.o ${OBJECTDIR}/tcpip/src/nbns.o ${OBJECTDIR}/tcpip/src/random.o ${OBJECTDIR}/tcpip/src/reboot.o ${OBJECTDIR}/tcpip/src/smtp.o ${OBJECTDIR}/tcpip/src/sntp.o ${OBJECTDIR}/tcpip/src/ssl.o ${OBJECTDIR}/tcpip/src/tcp.o ${OBJECTDIR}/tcpip/src/tcp_performance_test.o ${OBJECTDIR}/tcpip/src/telnet.o ${OBJECTDIR}/tcpip/src/tftp.o ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o ${OBJECTDIR}/tcpip/src/udp.o ${OBJECTDIR}/tcpip/src/udp_performance_test.o ${OBJECTDIR}/tcpip/src/zero_conf_helper.o ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o

# Source Files
SOURCEFILES=berkeley_tcp_client_demo.c berkeley_tcp_server_demo.c berkeley_udp_client_demo.c custom_http_app.c custom_ssl_cert.c drv_wifi_config.c generic_tcp_client.c generic_tcp_server.c main.c mpfs_img2.c ping_demo.c smtp_demo.c uart_config.c system.c tcpip/src/announce.c tcpip/src/arp.c tcpip/src/auto_ip.c tcpip/src/berkeley_api.c tcpip/src/common/arc4.c tcpip/src/common/big_int.c tcpip/src/common/delay.c tcpip/src/common/hashes.c tcpip/src/common/helpers.c tcpip/src/common/lcd_blocking.c tcpip/src/common/mpfs2.c tcpip/src/common/rsa.c tcpip/src/common/spi_eeprom.c tcpip/src/common/spi_flash.c tcpip/src/common/spi_ram.c tcpip/src/common/stack_task.c tcpip/src/common/tick.c tcpip/src/common/uart.c tcpip/src/ddns.c tcpip/src/dhcp_client.c tcpip/src/dhcp_server.c tcpip/src/dns_client.c tcpip/src/dns_server.c tcpip/src/ftp.c tcpip/src/http2.c tcpip/src/icmp.c tcpip/src/ip.c tcpip/src/nbns.c tcpip/src/random.c tcpip/src/reboot.c tcpip/src/smtp.c tcpip/src/sntp.c tcpip/src/ssl.c tcpip/src/tcp.c tcpip/src/tcp_performance_test.c tcpip/src/telnet.c tcpip/src/tftp.c tcpip/src/uart_to_tcp_bridge.c tcpip/src/udp.c tcpip/src/udp_performance_test.c tcpip/src/zero_conf_helper.c tcpip/src/zero_conf_link_local.c tcpip/src/zero_conf_link_multicast_dns.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ1024GB610
MP_LINKER_FILE_OPTION=,--script=p24FJ1024GB610.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/berkeley_tcp_client_demo.o: berkeley_tcp_client_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/berkeley_tcp_client_demo.o.d 
	@${RM} ${OBJECTDIR}/berkeley_tcp_client_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  berkeley_tcp_client_demo.c  -o ${OBJECTDIR}/berkeley_tcp_client_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/berkeley_tcp_client_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/berkeley_tcp_client_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/berkeley_tcp_server_demo.o: berkeley_tcp_server_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/berkeley_tcp_server_demo.o.d 
	@${RM} ${OBJECTDIR}/berkeley_tcp_server_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  berkeley_tcp_server_demo.c  -o ${OBJECTDIR}/berkeley_tcp_server_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/berkeley_tcp_server_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/berkeley_tcp_server_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/berkeley_udp_client_demo.o: berkeley_udp_client_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/berkeley_udp_client_demo.o.d 
	@${RM} ${OBJECTDIR}/berkeley_udp_client_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  berkeley_udp_client_demo.c  -o ${OBJECTDIR}/berkeley_udp_client_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/berkeley_udp_client_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/berkeley_udp_client_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/custom_http_app.o: custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/custom_http_app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  custom_http_app.c  -o ${OBJECTDIR}/custom_http_app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/custom_http_app.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/custom_http_app.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/custom_ssl_cert.o: custom_ssl_cert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  custom_ssl_cert.c  -o ${OBJECTDIR}/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/custom_ssl_cert.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/custom_ssl_cert.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/drv_wifi_config.o: drv_wifi_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/drv_wifi_config.o.d 
	@${RM} ${OBJECTDIR}/drv_wifi_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  drv_wifi_config.c  -o ${OBJECTDIR}/drv_wifi_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/drv_wifi_config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/drv_wifi_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/generic_tcp_client.o: generic_tcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/generic_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/generic_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  generic_tcp_client.c  -o ${OBJECTDIR}/generic_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/generic_tcp_client.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/generic_tcp_client.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/generic_tcp_server.o: generic_tcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/generic_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/generic_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  generic_tcp_server.c  -o ${OBJECTDIR}/generic_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/generic_tcp_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/generic_tcp_server.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mpfs_img2.o: mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/mpfs_img2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mpfs_img2.c  -o ${OBJECTDIR}/mpfs_img2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mpfs_img2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mpfs_img2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ping_demo.o: ping_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ping_demo.o.d 
	@${RM} ${OBJECTDIR}/ping_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ping_demo.c  -o ${OBJECTDIR}/ping_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ping_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/ping_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/smtp_demo.o: smtp_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/smtp_demo.o.d 
	@${RM} ${OBJECTDIR}/smtp_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  smtp_demo.c  -o ${OBJECTDIR}/smtp_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/smtp_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/smtp_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart_config.o: uart_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart_config.o.d 
	@${RM} ${OBJECTDIR}/uart_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart_config.c  -o ${OBJECTDIR}/uart_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart_config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/uart_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system.o: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.o.d 
	@${RM} ${OBJECTDIR}/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system.c  -o ${OBJECTDIR}/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/announce.o: tcpip/src/announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/announce.c  -o ${OBJECTDIR}/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/announce.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/announce.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/arp.o: tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/arp.c  -o ${OBJECTDIR}/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/arp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/arp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/auto_ip.o: tcpip/src/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/auto_ip.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/auto_ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/auto_ip.c  -o ${OBJECTDIR}/tcpip/src/auto_ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/auto_ip.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/auto_ip.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/berkeley_api.o: tcpip/src/berkeley_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/berkeley_api.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/berkeley_api.c  -o ${OBJECTDIR}/tcpip/src/berkeley_api.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/berkeley_api.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/berkeley_api.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/arc4.o: tcpip/src/common/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/arc4.c  -o ${OBJECTDIR}/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/arc4.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/arc4.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/big_int.o: tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/big_int.c  -o ${OBJECTDIR}/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/big_int.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/big_int.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/delay.o: tcpip/src/common/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/delay.c  -o ${OBJECTDIR}/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/hashes.o: tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/hashes.c  -o ${OBJECTDIR}/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/hashes.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/hashes.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/helpers.o: tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/helpers.c  -o ${OBJECTDIR}/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/helpers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/helpers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/lcd_blocking.o: tcpip/src/common/lcd_blocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/lcd_blocking.c  -o ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/lcd_blocking.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/lcd_blocking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/mpfs2.o: tcpip/src/common/mpfs2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/mpfs2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/mpfs2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/rsa.o: tcpip/src/common/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/rsa.c  -o ${OBJECTDIR}/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/rsa.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/rsa.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/spi_eeprom.o: tcpip/src/common/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/spi_eeprom.c  -o ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/spi_eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/spi_eeprom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/spi_flash.o: tcpip/src/common/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/spi_flash.c  -o ${OBJECTDIR}/tcpip/src/common/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/spi_flash.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/spi_flash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/spi_ram.o: tcpip/src/common/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_ram.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_ram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/spi_ram.c  -o ${OBJECTDIR}/tcpip/src/common/spi_ram.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/spi_ram.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/spi_ram.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/stack_task.o: tcpip/src/common/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/stack_task.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/stack_task.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/tick.o: tcpip/src/common/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/tick.c  -o ${OBJECTDIR}/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/tick.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/uart.o: tcpip/src/common/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/uart.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/uart.c  -o ${OBJECTDIR}/tcpip/src/common/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ddns.o: tcpip/src/ddns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ddns.c  -o ${OBJECTDIR}/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ddns.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ddns.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dhcp_client.o: tcpip/src/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dhcp_client.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dhcp_client.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dhcp_server.o: tcpip/src/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dhcp_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dhcp_server.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dns_client.o: tcpip/src/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dns_client.c  -o ${OBJECTDIR}/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dns_client.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dns_client.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dns_server.o: tcpip/src/dns_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dns_server.c  -o ${OBJECTDIR}/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dns_server.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dns_server.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ftp.o: tcpip/src/ftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ftp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ftp.c  -o ${OBJECTDIR}/tcpip/src/ftp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ftp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ftp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/http2.o: tcpip/src/http2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/http2.c  -o ${OBJECTDIR}/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/http2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/http2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/icmp.o: tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/icmp.c  -o ${OBJECTDIR}/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/icmp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/icmp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ip.o: tcpip/src/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ip.c  -o ${OBJECTDIR}/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ip.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ip.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/nbns.o: tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/nbns.c  -o ${OBJECTDIR}/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/nbns.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/nbns.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/random.o: tcpip/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/random.c  -o ${OBJECTDIR}/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/random.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/random.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/reboot.o: tcpip/src/reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/reboot.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/reboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/reboot.c  -o ${OBJECTDIR}/tcpip/src/reboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/reboot.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/reboot.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/smtp.o: tcpip/src/smtp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/smtp.c  -o ${OBJECTDIR}/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/smtp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/smtp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/sntp.o: tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/sntp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/sntp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/sntp.c  -o ${OBJECTDIR}/tcpip/src/sntp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/sntp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/sntp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ssl.o: tcpip/src/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ssl.c  -o ${OBJECTDIR}/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ssl.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ssl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/tcp.o: tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/tcp.c  -o ${OBJECTDIR}/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/tcp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/tcp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/tcp_performance_test.o: tcpip/src/tcp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp_performance_test.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp_performance_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/tcp_performance_test.c  -o ${OBJECTDIR}/tcpip/src/tcp_performance_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/tcp_performance_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/tcp_performance_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/telnet.o: tcpip/src/telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/telnet.c  -o ${OBJECTDIR}/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/telnet.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/telnet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/tftp.o: tcpip/src/tftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/tftp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/tftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/tftp.c  -o ${OBJECTDIR}/tcpip/src/tftp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/tftp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/tftp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o: tcpip/src/uart_to_tcp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/uart_to_tcp_bridge.c  -o ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/udp.o: tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/udp.c  -o ${OBJECTDIR}/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/udp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/udp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/udp_performance_test.o: tcpip/src/udp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/udp_performance_test.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/udp_performance_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/udp_performance_test.c  -o ${OBJECTDIR}/tcpip/src/udp_performance_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/udp_performance_test.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/udp_performance_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/zero_conf_helper.o: tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_helper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/zero_conf_helper.c  -o ${OBJECTDIR}/tcpip/src/zero_conf_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/zero_conf_helper.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/zero_conf_helper.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/zero_conf_link_local.o: tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/zero_conf_link_local.c  -o ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/zero_conf_link_local.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/zero_conf_link_local.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o: tcpip/src/zero_conf_link_multicast_dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/zero_conf_link_multicast_dns.c  -o ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/berkeley_tcp_client_demo.o: berkeley_tcp_client_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/berkeley_tcp_client_demo.o.d 
	@${RM} ${OBJECTDIR}/berkeley_tcp_client_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  berkeley_tcp_client_demo.c  -o ${OBJECTDIR}/berkeley_tcp_client_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/berkeley_tcp_client_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/berkeley_tcp_client_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/berkeley_tcp_server_demo.o: berkeley_tcp_server_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/berkeley_tcp_server_demo.o.d 
	@${RM} ${OBJECTDIR}/berkeley_tcp_server_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  berkeley_tcp_server_demo.c  -o ${OBJECTDIR}/berkeley_tcp_server_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/berkeley_tcp_server_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/berkeley_tcp_server_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/berkeley_udp_client_demo.o: berkeley_udp_client_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/berkeley_udp_client_demo.o.d 
	@${RM} ${OBJECTDIR}/berkeley_udp_client_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  berkeley_udp_client_demo.c  -o ${OBJECTDIR}/berkeley_udp_client_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/berkeley_udp_client_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/berkeley_udp_client_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/custom_http_app.o: custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/custom_http_app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  custom_http_app.c  -o ${OBJECTDIR}/custom_http_app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/custom_http_app.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/custom_http_app.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/custom_ssl_cert.o: custom_ssl_cert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/custom_ssl_cert.o.d 
	@${RM} ${OBJECTDIR}/custom_ssl_cert.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  custom_ssl_cert.c  -o ${OBJECTDIR}/custom_ssl_cert.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/custom_ssl_cert.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/custom_ssl_cert.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/drv_wifi_config.o: drv_wifi_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/drv_wifi_config.o.d 
	@${RM} ${OBJECTDIR}/drv_wifi_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  drv_wifi_config.c  -o ${OBJECTDIR}/drv_wifi_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/drv_wifi_config.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/drv_wifi_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/generic_tcp_client.o: generic_tcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/generic_tcp_client.o.d 
	@${RM} ${OBJECTDIR}/generic_tcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  generic_tcp_client.c  -o ${OBJECTDIR}/generic_tcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/generic_tcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/generic_tcp_client.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/generic_tcp_server.o: generic_tcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/generic_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/generic_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  generic_tcp_server.c  -o ${OBJECTDIR}/generic_tcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/generic_tcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/generic_tcp_server.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mpfs_img2.o: mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/mpfs_img2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mpfs_img2.c  -o ${OBJECTDIR}/mpfs_img2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mpfs_img2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mpfs_img2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/ping_demo.o: ping_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ping_demo.o.d 
	@${RM} ${OBJECTDIR}/ping_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ping_demo.c  -o ${OBJECTDIR}/ping_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ping_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/ping_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/smtp_demo.o: smtp_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/smtp_demo.o.d 
	@${RM} ${OBJECTDIR}/smtp_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  smtp_demo.c  -o ${OBJECTDIR}/smtp_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/smtp_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/smtp_demo.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart_config.o: uart_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart_config.o.d 
	@${RM} ${OBJECTDIR}/uart_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart_config.c  -o ${OBJECTDIR}/uart_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart_config.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/uart_config.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/system.o: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/system.o.d 
	@${RM} ${OBJECTDIR}/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  system.c  -o ${OBJECTDIR}/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/announce.o: tcpip/src/announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/announce.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/announce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/announce.c  -o ${OBJECTDIR}/tcpip/src/announce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/announce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/announce.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/arp.o: tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/arp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/arp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/arp.c  -o ${OBJECTDIR}/tcpip/src/arp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/arp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/arp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/auto_ip.o: tcpip/src/auto_ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/auto_ip.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/auto_ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/auto_ip.c  -o ${OBJECTDIR}/tcpip/src/auto_ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/auto_ip.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/auto_ip.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/berkeley_api.o: tcpip/src/berkeley_api.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/berkeley_api.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/berkeley_api.c  -o ${OBJECTDIR}/tcpip/src/berkeley_api.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/berkeley_api.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/berkeley_api.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/arc4.o: tcpip/src/common/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/arc4.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/arc4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/arc4.c  -o ${OBJECTDIR}/tcpip/src/common/arc4.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/arc4.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/arc4.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/big_int.o: tcpip/src/common/big_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/big_int.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/big_int.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/big_int.c  -o ${OBJECTDIR}/tcpip/src/common/big_int.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/big_int.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/big_int.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/delay.o: tcpip/src/common/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/delay.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/delay.c  -o ${OBJECTDIR}/tcpip/src/common/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/hashes.o: tcpip/src/common/hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/hashes.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/hashes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/hashes.c  -o ${OBJECTDIR}/tcpip/src/common/hashes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/hashes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/hashes.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/helpers.o: tcpip/src/common/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/helpers.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/helpers.c  -o ${OBJECTDIR}/tcpip/src/common/helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/helpers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/lcd_blocking.o: tcpip/src/common/lcd_blocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/lcd_blocking.c  -o ${OBJECTDIR}/tcpip/src/common/lcd_blocking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/lcd_blocking.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/lcd_blocking.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/mpfs2.o: tcpip/src/common/mpfs2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/mpfs2.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/mpfs2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/mpfs2.c  -o ${OBJECTDIR}/tcpip/src/common/mpfs2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/mpfs2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/mpfs2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/rsa.o: tcpip/src/common/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/rsa.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/rsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/rsa.c  -o ${OBJECTDIR}/tcpip/src/common/rsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/rsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/rsa.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/spi_eeprom.o: tcpip/src/common/spi_eeprom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/spi_eeprom.c  -o ${OBJECTDIR}/tcpip/src/common/spi_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/spi_eeprom.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/spi_eeprom.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/spi_flash.o: tcpip/src/common/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/spi_flash.c  -o ${OBJECTDIR}/tcpip/src/common/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/spi_flash.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/spi_ram.o: tcpip/src/common/spi_ram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_ram.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/spi_ram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/spi_ram.c  -o ${OBJECTDIR}/tcpip/src/common/spi_ram.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/spi_ram.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/spi_ram.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/stack_task.o: tcpip/src/common/stack_task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/stack_task.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/stack_task.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/stack_task.c  -o ${OBJECTDIR}/tcpip/src/common/stack_task.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/stack_task.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/stack_task.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/tick.o: tcpip/src/common/tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/tick.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/tick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/tick.c  -o ${OBJECTDIR}/tcpip/src/common/tick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/tick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/common/uart.o: tcpip/src/common/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src/common" 
	@${RM} ${OBJECTDIR}/tcpip/src/common/uart.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/common/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/common/uart.c  -o ${OBJECTDIR}/tcpip/src/common/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/common/uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/common/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ddns.o: tcpip/src/ddns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ddns.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ddns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ddns.c  -o ${OBJECTDIR}/tcpip/src/ddns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ddns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ddns.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dhcp_client.o: tcpip/src/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dhcp_client.c  -o ${OBJECTDIR}/tcpip/src/dhcp_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dhcp_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dhcp_client.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dhcp_server.o: tcpip/src/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dhcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dhcp_server.c  -o ${OBJECTDIR}/tcpip/src/dhcp_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dhcp_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dhcp_server.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dns_client.o: tcpip/src/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_client.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dns_client.c  -o ${OBJECTDIR}/tcpip/src/dns_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dns_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dns_client.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/dns_server.o: tcpip/src/dns_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_server.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/dns_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/dns_server.c  -o ${OBJECTDIR}/tcpip/src/dns_server.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/dns_server.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/dns_server.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ftp.o: tcpip/src/ftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ftp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ftp.c  -o ${OBJECTDIR}/tcpip/src/ftp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ftp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ftp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/http2.o: tcpip/src/http2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/http2.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/http2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/http2.c  -o ${OBJECTDIR}/tcpip/src/http2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/http2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/http2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/icmp.o: tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/icmp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/icmp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/icmp.c  -o ${OBJECTDIR}/tcpip/src/icmp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/icmp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/icmp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ip.o: tcpip/src/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ip.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ip.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ip.c  -o ${OBJECTDIR}/tcpip/src/ip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ip.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ip.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/nbns.o: tcpip/src/nbns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/nbns.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/nbns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/nbns.c  -o ${OBJECTDIR}/tcpip/src/nbns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/nbns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/nbns.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/random.o: tcpip/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/random.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/random.c  -o ${OBJECTDIR}/tcpip/src/random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/random.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/reboot.o: tcpip/src/reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/reboot.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/reboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/reboot.c  -o ${OBJECTDIR}/tcpip/src/reboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/reboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/reboot.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/smtp.o: tcpip/src/smtp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/smtp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/smtp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/smtp.c  -o ${OBJECTDIR}/tcpip/src/smtp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/smtp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/smtp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/sntp.o: tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/sntp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/sntp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/sntp.c  -o ${OBJECTDIR}/tcpip/src/sntp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/sntp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/sntp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/ssl.o: tcpip/src/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/ssl.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/ssl.c  -o ${OBJECTDIR}/tcpip/src/ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/ssl.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/tcp.o: tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/tcp.c  -o ${OBJECTDIR}/tcpip/src/tcp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/tcp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/tcp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/tcp_performance_test.o: tcpip/src/tcp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp_performance_test.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/tcp_performance_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/tcp_performance_test.c  -o ${OBJECTDIR}/tcpip/src/tcp_performance_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/tcp_performance_test.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/tcp_performance_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/telnet.o: tcpip/src/telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/telnet.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/telnet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/telnet.c  -o ${OBJECTDIR}/tcpip/src/telnet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/telnet.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/telnet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/tftp.o: tcpip/src/tftp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/tftp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/tftp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/tftp.c  -o ${OBJECTDIR}/tcpip/src/tftp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/tftp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/tftp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o: tcpip/src/uart_to_tcp_bridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/uart_to_tcp_bridge.c  -o ${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/uart_to_tcp_bridge.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/udp.o: tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/udp.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/udp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/udp.c  -o ${OBJECTDIR}/tcpip/src/udp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/udp.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/udp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/udp_performance_test.o: tcpip/src/udp_performance_test.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/udp_performance_test.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/udp_performance_test.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/udp_performance_test.c  -o ${OBJECTDIR}/tcpip/src/udp_performance_test.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/udp_performance_test.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/udp_performance_test.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/zero_conf_helper.o: tcpip/src/zero_conf_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_helper.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_helper.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/zero_conf_helper.c  -o ${OBJECTDIR}/tcpip/src/zero_conf_helper.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/zero_conf_helper.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/zero_conf_helper.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/zero_conf_link_local.o: tcpip/src/zero_conf_link_local.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/zero_conf_link_local.c  -o ${OBJECTDIR}/tcpip/src/zero_conf_link_local.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/zero_conf_link_local.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/zero_conf_link_local.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o: tcpip/src/zero_conf_link_multicast_dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tcpip/src" 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o.d 
	@${RM} ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcpip/src/zero_conf_link_multicast_dns.c  -o ${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/tcpip/src/zero_conf_link_multicast_dns.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/wifeyWithServer_trial.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
