Few of my scripts
------------------------
These scripts can be placed into ~/.bin By adding the following line in
.bashrc you can execute them as a command from your terminal.
```
[[ -d ~/.bin ]] && export PATH=~/.bin:"${PATH}"
```

| Name | Script Purpose |
|-------------|-------------|
| do_dns.sh | update DigitalOcean DNS record |
| eac | extract compressed files such as tar.gz, rar, zip |
| update | semi automate update and cleanup packages |
