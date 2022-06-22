#!/bin/bash
##############################################################################
# Program: sonarqube_installation.sh
# Description: Install and configure SonarQube on CentOS 7
# Author: David N Uchieng
# Note: This link "https://192.168.56.103:9000", username: admin and password: school1
#       will be provided to DevOps team.
# Date: 6/20/2022
##############################################################################

# SonarQube is used for continuous inspection of code quality. SonarQube does static code analysis, 
# which provides a detailed report of bugs, code smells, vulnerabilities, code # duplication.

# Note: Sonarqube doesnt work when you start it as root user

echo "Installing Sonarqube on CentOS7, please wait!"

# Start it as vagrant user
su - vagrant

# Java 11 installation and install OpenJDK 11
sudo yum update -y
sudo yum install java-11-openjdk -y

# Navigate to the /opt directory before downloading
cd /opt

# Install wget on the system
sudo yum install wget -y

# If unzip is not installed on your system
sudo unzip /opt/sonarqube-9.3.0.51899.zip

# Change ownership to the user and Switch to Linux binaries directory.

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

# Start service
./sonar.sh start

echo "Sonarqube installed and started successfully"

