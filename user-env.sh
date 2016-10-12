

# Ambari configuration
host='abajwa-hdf-qe-hdfdemo-1.openstacklocal:8080'
user='admin'
pass='admin'

#auto detect cluster name
output=`curl -u $user:$pass -i -H 'X-Requested-By: ambari'  http://$host/api/v1/clusters`
cluster=`echo $output | sed -n 's/.*"cluster_name" : "\([^\"]*\)".*/\1/p'`