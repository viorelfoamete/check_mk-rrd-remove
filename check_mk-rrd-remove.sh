# Wrote by Viorel Foamete
#
# Must be run as check_mk site owner
#
# Change directory to perfdata folder
# and deletes empty rrds

owner=`whoami`
cd /omd/sites/$owner/var/pnp4nagios/perfdata
find . -exec file {} \; | grep empty  | awk -F ":" '{ print $1 }' | xargs rm
