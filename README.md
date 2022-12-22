# 42cursus - Born2beroot

You will create your first machine in VirtualBox (or UTM if you can’t use VirtualBox) under specific instructions. Then, at the end of this project, 
you will be able to set up your own operating system while implementing strict rules.
## Project overview
### <a>What is a Virtual Machine?</a>
A virtual machine (VM) is a software-based implementation of a computer system that runs on top of a physical computer's hardware. 
It allows a single physical machine to host multiple virtual environments, each of which can run its own operating system and applications independently of the others.
irtual machines are often used for testing and development, or to run older or resource-intensive software on newer hardware. 
They provide a way to isolate and secure applications and operating systems from one another, and to run multiple operating systems on a single physical machine.
### <a>Why choosing Debian?</a>
Debian is a popular and widely used open-source operating system that is known for its stability, security, and flexibility.
Here are a few reasons why you might consider using Debian:
Stability: Debian is known for its stable and reliable operating system, 
           which makes it a good choice for servers and other mission-critical systems.

Security: Debian is actively maintained and receives regular security updates, 
          making it a secure choice for both personal and enterprise use.

Flexibility: Debian is a highly customizable operating system that can be tailored to fit a wide range of use cases. 
             It is also compatible with a wide range of hardware, making it a good choice for use on older or low-spec systems.

Open-source: Debian is developed and maintained by a global community of volunteers, 
             and its source code is available for anyone to view and modify. 
             This makes it a good choice for those who value transparency and community-driven development.

Large user base: Debian has a large and active user base, which means that there is a wealth of online resources, 
                 documentation, and support available for users.

Ultimately, whether or not Debian is the right choice for you will depend on your specific needs and preferences.
It is always a good idea to research and compare different operating systems to determine which one is the best fit for your needs.
### <a> The purpose of virtual machines? </a>
Resource allocation: VMs allow users to allocate resources (such as CPU, memory, and storage) to different operating systems and applications as needed,
                     without the need for physical hardware.
                     This can be particularly useful for testing and development purposes.

Isolation: VMs provide a level of isolation between the host operating system and the guest operating system,
           which can be useful for security and stability purposes.

Compatibility: VMs can be used to run older or incompatible software on newer hardware and operating systems.

Portability: VMs can be easily moved from one physical machine to another,
             making it easier to move applications and operating systems between environments.

Overall, the main purpose of virtual machines is to allow users to run multiple operating systems and applications on a single physical machine,providing flexibility and isolation for a variety of purposes.
### <a> the difference between aptitude and apt, and what APPArmor </a>
Aptitude and apt are two package management tools used in the Debian-based Linux distributions such as Ubuntu.

Aptitude is a high-level package manager that can be used to search for, install, remove, and update software packages.
It is a text-based interface that provides a number of features, including the ability to resolve dependencies automatically,
perform batch operations, and more.

Apt (short for "Advanced Package Tool") is a command-line tool that is used to manage software packages in Debian-based systems.
It is a lower-level tool than aptitude and does not have as many features, but it is faster and more lightweight.

Both aptitude and apt use the same package repository, and either tool can be used to manage packages on a Debian-based system.

However, aptitude is generally considered a more feature-rich and user-friendly tool, while apt is more suited to advanced users and scripting.

AppArmor (Application Armor) is a Linux security module that allows administrators to specify fine-grained access controls for applications.
It is designed to protect the operating system and applications from malicious or accidental access to system resources.
### <a> Command to display script every 10min </a>
    sudo crontab -u root -e
#### <a> Replace </a>
    # m h dom mon dow command
#### <a> With </a>
    */10 * * * * sh /path/to/script
#### <a> Check root's schedueld cron jobs via </a>
    sudo crontab -u root -l
## Simple setup

### <a> Check that the UFW srvice is started </a>
    sudo service ufw status
### <a> Check that the SSH service is started </a>
    sudo service ssh status
### <a> Check the choosing OS is Debian or Rocky </a>
    uname -a
## User
### <a> Check that the user has been added to the sudo group </a>
    getent group sudo
### <a> Check that the user belongs to the user42 group </a>
    getent group user42
### <a> creat new user </a>
    sudo adduser <user>
### <a> creat new group </a>
    sudo groupadd <group> 
### <a> add user into group </a>
    sudo adduser <user> <group>
### <a> Check if a group exist </a>
    dpkg -l | grep <group>
### <a> View password Policy </a>
    /etc/pam.d/common-password
### <a> Check password expiration Rules </a>
    sudo chage -l <username>
## Hostename and partitions
### <a> Check hostname of the machine it should be as follow: login42 </a>
    hostname
### <a> Change hostname </a>
    sudo hostname <new-hostname>
### <a> Display  partition </a>
    lsblk 
### <a> What is LVM </a>
lvm is a device mapper framework that provides logical volume management for the Linux Kernel.
## Sudo

### <a> Check that the sudo program is installed </a>
    which sudo
### <a> Display rules of sudo </a>
    cat /etc/sudoers.d/sudo
### <a> Verify that the "/var/log/sudo/"folder exist </a>
    sudo cat /var/log/sudo/sudo.log
## UFW
### what is ufw ?
(Uncomplicated Firewall) is a firewall management tool for Linux systems.allows you to set up rules to control incoming and outgoing traffic on your system. You can use ufw to block or allow traffic based on various criteria, such as the port number, the protocol, or the source or destination IP address. You can also use ufw to log traffic or to rate limit certain types of traffic.

### <a> Check that the UFW is properly installed </a>
    sudo UFW status 
### <a> Add a new Port to ufw </a>
    sudo ufw allow <new_port>
## SSH
### what is ssh ?
(Secure Shell) is a network protocol used to securely connect to a remote computer. It allows you to remotely access a command-line interface on a remote computer and execute commands, as if you were sitting at the computer's console.

ssh uses encryption to secure the connection between the client and the server, ensuring that the data transmitted over the connection cannot be intercepted or modified by third parties. This makes ssh a secure and reliable way to remotely access a computer, particularly when accessing sensitive information or systems. ssh is commonly used to remotely access and manage servers, but it can also be used to connect to desktop computers and other devices. ssh is available on a wide range of operating systems, including Linux, macOS, and Windows.

To use ssh, you need to have an ssh client installed on your computer, and the remote computer must have an ssh server running. You can then use the ssh command to connect to the remote computer, specifying the user name and the IP address or hostname of the remote computer. For example:
### example
    ssh username@remote.example.com
### <a> Check that the SSH service is installed </a>
    which ssh


    






