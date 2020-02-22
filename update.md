# Update Script

## Description

A script to semi automate the packages update procedure and cleanup on Debian based distributions using the **apt** package manager and other packages.

## Usage

Select an option from the menu provided in script. Both lowe and capital letters work.

**Options:**

**1 - Update**
Update the local repositories.

**2 - Upgrade**
Install available package upgrades.

**3 - Full-Upgrade**
Works as upgrade but also removes installed package if is required to resolve a package conflict.

**L - List Available Upgrades**
List packages available for upgrade after repositories update.

**A - Autoremove**
Remove package dependencies that are no longer required.

**O - Remove Obsolete Packages**
Using aptitude package manager you purge packages which are no longer provided by any of the repositories. List of these packages can by provided by running ```aptitude search ?obsolete```

**D - Purge Packages using deborphan**
Determines which packages have no other packages depending on their installation. It is most useful when finding libraries, but it can be used on packages in all sections.
Using again apt you remove them.
**deborphan** package must be installed.

**C - apt Clean**
Clears out the local repository of retrieved packages fles.

**V - apt history log**
View the latest history log file.

**E - Edit source.list files**
Select and edit sources .list files.

**H - Info and help**
Launches default web-browser to view this file on GitHub.

**Q - Exit**
Exits the script.

## Changelog

### v0.4 - 16/2/2020
- A better help on how to operate the script, something like a man page hosted on GitHub.com
- Replaced Dist-upgrade with full-upgrade
- A check for deborphan and aptitude package added

### v0.5 - 22/3/2020
- Packages check is done now inside function
- Check if user has sudo access
- Fix D option bug, not getting deborphan packages
- Some functions and variables renamed
