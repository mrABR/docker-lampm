# docker-lampm - sendmail() in a container figured out
### Just a docker environment for a LAMP with a Mailable server and Database administration

Recently I've felt the need to replicate small and legacy projects with old php versions, databases and webserver configurations.
Most are setup on an Apache webserver and sometimes re-writing email templates and using php's `mail` function is a necessity.

I've had some difficulty sorting out something out-of-the-box on the Internet to get things started (specially with the mailing part), so I've created this real small and easy setup to help me on a daily basis.

After a few headaches, it seems its really that easy! All you gotta do is simply install an MTA (like sendmail) on the Php dockerized image and setup a SMTP client, link them and boom!

Feel free to use it if it meets your requirements!
Below is a list of the configuration

### Setup the environment

Requirements:
- Docker
- Docker-compose
- Basic docker and docker-compose knowledge

Clone this repo and run `docker-compose up -d` <br>
A folder named `html` will appear. That is a volume setup to place your root project in. If you need to customize the directory, I advise writing your own apache conf and add it as volume or use COPY if you want to keep it in the [Dockerfile](Dockerfile)

### Exposed ports*

| Application   | Port(s)       |
| ------------- | ------------- |
| Apache        | 80            |
| Adminer       | 8080          |
| MailDev       | 1080, 1025    |

*Change the ports within the [docker-compose.yml](docker-compose.yml) to your needs
