#!/bin/bash
#script to make backup txt files from
#custom wordpress tables


#getopts version is crucial for shell_exec operation
while getopts u:p:h: flag
do
    case "${flag}" in
        u) myuser=${OPTARG};;
	      h) echo "bash backupwordpress.sh -u yourusername -p yourpassword";;
        p) mypassword=${OPTARG};;
    esac
done
tmp="/var/www/wordpress/wp-content/plugins/ISCDatabaseTool/SQL_Backups"
#TODO have the backups in wp-content/uploads/SQL_Backups
#TODO find a way to sync the backups outside of the public git
mysqldump -u $myuser -p$mypassword wordpress Originators > $tmp/Originators.sql
mysqldump -u $myuser -p$mypassword wordpress Aliases > $tmp/Aliases.sql
mysqldump -u $myuser -p$mypassword wordpress ISC_Category > $tmp/ISC_Category.sql
mysqldump -u $myuser -p$mypassword wordpress ISC_Moods > $tmp/ISC_Moods.sql
mysqldump -u $myuser -p$mypassword wordpress ISC_Topics > $tmp/ISC_Topics.sql
mysqldump -u $myuser -p$mypassword wordpress ISC_Genre > $tmp/ISC_Genre.sql
mysqldump -u $myuser -p$mypassword wordpress ISC_Domains > $tmp/ISC_Domains.sql
mysqldump -u $myuser -p$mypassword wordpress ISC_Subjects > $tmp/ISC_Subjects.sql
mysqldump -u $myuser -p$mypassword wordpress ISC_Attributes > $tmp/ISC_Attributes.sql
mysqldump -u $myuser -p$mypassword wordpress Article_Images > $tmp/Article_Images.sql
mysqldump -u $myuser -p$mypassword wordpress Articles > $tmp/Articles.sql
mysqldump -u $myuser -p$mypassword wordpress U_Values > $tmp/U_Values.sql
mysqldump -u $myuser -p$mypassword wordpress Audit_Log > $tmp/Audit_Log.sql
mysqldump -u $myuser -p$mypassword wordpress Event_Keywords > $tmp/Event_Keywords.sql
mysqldump -u $myuser -p$mypassword wordpress Event_Performances > $tmp/Event_Performances.sql
mysqldump -u $myuser -p$mypassword wordpress Event_Performers > $tmp/Event_Performers.sql
mysqldump -u $myuser -p$mypassword wordpress Events > $tmp/Events.sql
mysqldump -u $myuser -p$mypassword wordpress Keywords > $tmp/Keywords.sql
mysqldump -u $myuser -p$mypassword wordpress Performance_Keywords > $tmp/Performance_Keywords.sql
mysqldump -u $myuser -p$mypassword wordpress Performance_Performers > $tmp/Performance_Performers.sql
mysqldump -u $myuser -p$mypassword wordpress Performance_Recording > $tmp/Performance_Recording.sql
mysqldump -u $myuser -p$mypassword wordpress Performances > $tmp/Performances.sql
mysqldump -u $myuser -p$mypassword wordpress Performer_Keywords > $tmp/Performer_Keywords.sql
mysqldump -u $myuser -p$mypassword wordpress Permission_Types > $tmp/Permission_Types.sql
mysqldump -u $myuser -p$mypassword wordpress Transcription_Recording > $tmp/Transcription_Recording.sql
mysqldump -u $myuser -p$mypassword wordpress Transcription_SRT > $tmp/Transcription_SRT.sql
mysqldump -u $myuser -p$mypassword wordpress Profile_Images > $tmp/Profile_Images.sql
mysqldump -u $myuser -p$mypassword wordpress Role_Type > $tmp/Role_Type.sql
mysqldump -u $myuser -p$mypassword wordpress User_Addresses > $tmp/User_Addresses.sql
mysqldump -u $myuser -p$mypassword wordpress User_Genders > $tmp/User_Genders.sql
mysqldump -u $myuser -p$mypassword wordpress User_Login_Policies > $tmp/User_Login_Policies.sql
mysqldump -u $myuser -p$mypassword wordpress User_Names > $tmp/User_Names.sql
mysqldump -u $myuser -p$mypassword wordpress User_Phone_Numbers > $tmp/User_Phone_Numbers.sql
mysqldump -u $myuser -p$mypassword wordpress User_Roles > $tmp/User_Roles.sql

echo "Backup completed."


