#! /bin/bash
# Script de reporting SnowCat - UX
# Auteur : tomcat@snowcat.fr
# Avril 2017

# Reporting Espace Disque

echo 'Reporting Espace Disque' > /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt
ssm list >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Reporting Process en cours

echo >> /home/tomcat/Documents/sysrep/ux_report.txt
ps -ef >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# reporting Etat des Process

monit summary >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Check SuriCata fast.log (50 dernière lignes)

tail -50 /var/log/suricata/fast.log >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Reporting Fail2ban

tail -30 /var/log/fail2ban.log >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Envoi du mail de reporting

mail -s "Reporting Journalier Snowcat-UX" tomcat@snowcat.fr < /home/tomcat/Documents/sysrep/ux_report.txt





