Few of my scripts
------------------------
Using the terminal sometimes can be painful. For example some simple
tasks can waste your precious time if you don't remember the exact
command or for just being lazy. To make your life easier you develop something
to automate these tasks. And this is what I did. These scripts save my time
just by running them in my terminal since is where I work 99% when I am on my machine.

I placed my scripts in my home directory in .bin and added the line
bellow in my .bashrc so I can execute them anywhere I am.

**Note: If scripts are placed in another directory edit the line bellow
accordingly.**
```
[[ -d ~/.bin ]] && export PATH=~/.bin:"${PATH}"
```

| Name | Script Purpose |
|-------------|-------------|
| do_dns.sh | update DigitalOcean DNS record (must be edited first with your details) |
| eac | extract compressed files such as tar.gz, rar, zip etc. or compress files to *.tar.gz |
| update | semi automate update and cleanup packages on Debian based distros |
| git_setup | set of commands to setup some git configuration |
