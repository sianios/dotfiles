Few of my scripts
------------------------
These scripts can be placed into ~/.bin By adding the following line in
.bashrc you can execute them as a command from your terminal.
```
[[ -d ~/.bin ]] && export PATH=~/.bin:"${PATH}"
```

|   Name	|		Use					|
|---------------|-------------------------------------------------------|
|do_dns.sh	|	update DigitalOcean DNS record			|
|eac		|	extract compressed files like tar.gz, rar, zip and compress to tar.gz|
|vim		|	check if user can modify file else uses sudo	|
|update     |   simple update script |
