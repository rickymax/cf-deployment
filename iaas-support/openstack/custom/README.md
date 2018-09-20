# Update Cloud Config

## Example

```
bosh -e spacex update-cloud-config \
    -v availability_zone1=<AZ1> \
    -v availability_zone2=<AZ2> \
    -v availability_zone3=<AZ3> \
    -v network_mgmt=<NET_ID_MGMT> \
    -v network_cf1=<NET_ID_CF1> \
    -v network_cf2=<NET_ID_CF2> \
    -v network_cf3=<NET_ID_CF3> \
    -v network_rmq=<NET_ID_RMQ> \
    -v network_public=<NET_ID_PUBLIC> \
    -v dns=[<DNS>] \
    /opt/spacex/workspaces/cf-deployment/iaas-support/openstack/custom/cloud-config.yml
```

# Deploying Cloud Foundry on OpenStack

## Example

```
bosh -e spacex -d cf deploy /opt/spacex/workspaces/cf-deployment/cf-deployment.yml \
    --vars-store /opt/spacex/workspaces/cf-vars.yml \
    -o /opt/spacex/workspaces/cf-deployment/operations/openstack.yml \
    -o /opt/spacex/workspaces/cf-deployment/operations/custom/use-haproxy.yml \
    -v system_domain=<DOMAIN> \
    -v haproxy_public_ip=<HAPROXY_PUBLIC_IP>
```
