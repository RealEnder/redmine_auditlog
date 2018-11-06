Redmine Auditlog
-------

Provides full auditlog for user actions in Redmine instance.

### Warning

This is work in progress, pre-beta and should not be used on prod yet.


How to use
-------
```
  $ cd /path/to/redmine/plugins
  $ git clone https://github.com/RealEnder/redmine_auditlog
  $ cd redmine_auditlog
  $ rails generate audited:install --audited-changes-column-type jsonb # This is for more efficient PostgreSQL storage
  $ cd ../..
  $ rake db:migrate RAILS_ENV="production"
```
Then restart Redmine.

How to remove
-------
```
  $ cd /path/to/redmine
  $ rake redmine:plugins:migrate NAME=redmine_auditlog VERSION=0 RAILS_ENV=production
  $ rm -rf plugins/redmine_auditlog
```
Then restart Redmine. This will not remove audit table.


Compatible with:	Redmine 3.4.x, 3.3.x, 3.2.x, 3.1.x, 3.0.x  
Tested with Redmine 3.4.6

License
-------
Copyright 2018 Alex Stanev <alex@stanev.org>  
This plugin is released under the GPL v3 license. See  
LICENSE for more information.

