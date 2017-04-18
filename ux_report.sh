#! /bin/bash
# Script de reporting SnowCat - UX
# Auteur : tomcat@snowcat.fr
# Avril 2017

# Vidage du fichier précédent

rm -rf /home/tomcat/Documents/sysrep/ux_report.txt
touch /home/tomcat/Documents/sysrep/ux_report.txt

echo '-------------------------------------' >> /home/tomcat/Documents/sysrep/ux_report.txt
echo '--- Reporting Status Snowcat - UX ---' >> /home/tomcat/Documents/sysrep/ux_report.txt
echo '-------------------------------------' >> /home/tomcat/Documents/sysrep/ux_report.txt

# Reporting Espace Disque

echo 'Reporting Espace Disque' > /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt
ssm list >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Reporting Process CPU

echo >> /home/tomcat/Documents/sysrep/ux_report.txt
ps -eo pmem,pcpu,pid,args | tail -n +2 | sort -rnk 2 | head >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Reporting Process Memoire

echo >> /home/tomcat/Documents/sysrep/ux_report.txt
ps -eo pmem,pcpu,pid,args | tail -n +2 | sort -rnk 1 | head >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# reporting Etat des Process

monit summary >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Check SuriCata fast.log (50 dernière lignes)

tail -20 /var/log/suricata/fast.log >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Reporting Fail2ban

tail -30 /var/log/fail2ban.log >> /home/tomcat/Documents/sysrep/ux_report.txt
echo >> /home/tomcat/Documents/sysrep/ux_report.txt

# Envoi du mail de reporting

mail -s "Reporting Snowcat-UX " -r "tomcat@snowcat.fr" tomcat@snowcat.fr < /home/tomcat/Documents/sysrep/ux_report.txt





