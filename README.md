# migrate-password-wp2discourse

If migrating passwords to Discourse is required, this  simple script may help.
  - you need https://github.com/discoursehosting/discourse-migratepassword/ installed first
  - create text file with email;hashed-password on each line. That should be done by export from database. For Wordpress, see example-wp-export.sh
  - copy over to your Discourse server, e.g. to /var/discourse/shared/standalone/tmp
  - copy the script to the same location
  - make sure you create a reliable backup of Discourse before you try next steps
  - switch to user with permissions to discourse container
  - cd /var/discourse
  - ./launcher enter app
  - cd shared/tmp
  - run the script with your exported file name as an argument
  - wait, it runs slowly
