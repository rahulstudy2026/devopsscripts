#! /bin/bash
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-24.12.0.100206.zip
unzip sonarqube-24.12.0.100206.zip
sudo yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-24.12.0.100206.zip -R
chmod 777 sonarqube-24.12.0.100206 -R
su - sonar -c "/opt/sonarqube-24.12.0.100206/bin/linux-x86-64/sonar.sh start"

# use the below command manually after installation
#sh /opt/sonarqube-8.9.6.50800/bin/linux-x86-64/sonar.sh start
#echo "user=admin & password=admin"
