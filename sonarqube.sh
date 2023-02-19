sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
# if unzip is not installed on your system, run the following command
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-x.x/bin/linux-x86-64
./sonar.sh start
# Connect to the SonarQube server through the browser. It uses port 9000
# http://<your-ip-address>:9000
# sudo firewall-cmd --permanent --add-port=9000/tcpcd
# sudo firewall-cmd --reload