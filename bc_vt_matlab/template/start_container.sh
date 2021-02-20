## command to start container, container=$1
echo using $1


singularity run --bind=/home/$USER:/home/$USER/Documents,/var:/var,`pwd`/vnc.log:/dockerstartup/vnc.log,`pwd`/novnc.log:/dockerstartup/novnc.log,/tmp:/tmp,/projects:/projects,/work:/work,`pwd`/startup.sh:/dockerstartup/startup.sh,`pwd`/port.rc:/dockerstartup/port.rc --writable-tmpfs --containall $1
