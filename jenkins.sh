Jenkins commands:

# Switch to root (admin mode for entire session)
sudo -i
# Update all packages to latest versions
# Install Java 21 (Jenkins runs on Java)
# Verify Java installation
# Add Jenkins repository (so yum knows where to download Jenkins from)
# Import Jenkins GPG key (security verification)
# Install Jenkins
# Install Git (needed for pulling code from repos)
# Enable Jenkins to start automatically on reboot
# Start Jenkins service now
# Check if Jenkins is running properly
# Exit root mode (important safety step)



sudo yum update -y
yum install java-21-amazon-corretto -y
java -version
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
yum install git -y
