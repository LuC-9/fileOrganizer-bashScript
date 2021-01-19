# fileOrganizer-bashScript

A bash script which would organize all the files of current directory according to their file extensions into there respective sub-folders

## WE CAN SCHEDULE THE SCRIPT USING CRON JOB BY SIMPLY TYPING crontab -e in terminal
What “crontab -e” does

The Linux crontab documentation is pretty clear about editing the crontab files:

  Each user can have their own crontab, 
The documentation further states that the crontab command should be used to edit your crontab file, and you specifically edit the file with the crontab -e command.

Here's a description of what the crontab -e command does, taken directly from the crontab man page:
  This option is used to edit the current crontab using the 
  editor specified by the VISUAL or EDITOR environment variables. 
  After you exit from the editor, the modified crontab will be 
  installed automatically.
  
 #Some hints for crontab
 
 * * * * * /xxx/../abc.xy  run cron job every minute
 0 * * * * /xxx/../abc.xy  run cron job every hour
 0 0 * * * /xxx/../abc.xy  run cron job every midnight
  
  //FOR MORE CRON JOB TIMINGS VIST CRONTAB.GURU//
