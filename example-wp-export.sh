#!/bin/bash


mysql -p<dbuser> -p<dbpwd> <dbname> -e 'select user_login,user_pass from wp_users; ' > <outputfile>
