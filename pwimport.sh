#!/bin/bash

inputfile=$1

for line in $(cat $inputfile);do
echo "LINE:  $line"
  email=$(echo  $line | cut -d';' -f1)
  hashedpw=$(echo  $line | cut -d';' -f2)
    echo "email: $email, hashedpw: $hashedpw"
    echo -e "u = User.find_by_email('$email'); 0\nu.custom_fields['import_pass'] = '$hashedpw'\nu.save" >>  import.rb
done
cat import.rb | rails c
mv import.r{,.old}
