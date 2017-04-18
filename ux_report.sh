#! /bin/bash
# Script de reporting SnowCat - UX
# Auteur : tomcat@snowcat.fr
# Avril 2017

echo 'Reporting Espace Disque' > /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt
ssm list >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt





