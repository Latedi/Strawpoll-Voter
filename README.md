This simple script sends spoofed votes to strawpoll.me

The script however is very limited as it relies on TOR and the number of exit nodes' IP addresses. The longer the script is in use the slower it will vote.

For this to work you will need to install TOR and also make sure that the tor configuration file is set to listen on port 9050, or edit the script to listen to whatever config you have. Don't forget to run the script wiht sudo.

The first argument, the poll ID is found with the url such as strawpoll.me/[poll ID]. The second argument, the vote ID is determined by the default order of the options and not the order of number of votes. The counting begins at 0 so a poll of 3 options has possible arguments of 0, 1 and 2.
