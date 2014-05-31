This simple script spoofs IP adresses and sends votes to strawpoll.me
To kill the threads of the Threaded version issue a command such as
sudo ./Kill_Threads.sh
or
sudo killall -v Strawpoll_Threaded.sh.
The SIGINT trapping is not working for some reason.

The first argument, the poll ID is found with the url such as strawpoll.me/<poll ID>. The second argument, the vote ID is determined by the default order of the options and not the order of number of votes. The counting begins at 0 so a poll of 3 options has possible arguments of 0, 1 and 2.
