Few of my scripts
------------------------
## Update 29/03/20:
update script will get its own personal repository. Right now a new
version is in development with fixes, improvements and new features.
## Description:
Using the terminal sometimes can be painful. For example some simple
tasks can waste your precious time if you don't remember the exact
command or for just being lazy. To make your life easier you develop something
to automate these tasks. And this is what I did. These scripts save my time
just by running them in my terminal since is where I work 99% when I am on my machine.

I placed these scripts under $HOME in **bin** and added the line
bellow in my .bashrc so I can execute them anywhere I am just by typing
their name.
```
[[ -d ~/bin ]] && export PATH=~/bin:"${PATH}"
```
**Note: If you placed scripts in another directory edit the line above
accordingly.**
**Note 2: Make source you source .bashrc after adding the line.

| Name | Script Purpose |
|-------------|-------------|
| do_dns.sh | update DigitalOcean DNS record (must be edited first with your details) |
| eac | extract compressed files such as tar.gz, rar, zip etc. or compress files to *.tar.gz |
| git_setup | set of commands to setup some git configuration (take a moment to adjust it for you)|
