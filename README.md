# rancher-metadata-airgap
A simple pod for publishing the Rancher metadata.json in an airgap setup.

## Build status
[![Build Status](https://drone.support.tools/api/badges/mattmattox/rancher-metadata-airgap/status.svg)](https://drone.support.tools/mattmattox/rancher-metadata-airgap)

## Installation

NOTE: This should deployed on the Rancher Local cluster

- Deploy workload to k8s

```
kubectl apply -f https://raw.githubusercontent.com/mattmattox/rancher-metadata-airgap/main/deploy/01-deployment.yaml
kubectl apply -f https://raw.githubusercontent.com/mattmattox/rancher-metadata-airgap/main/deploy/02-service.yaml
```

- Update Rancher
Browse to the Rancher UI -> Global -> Settings -> rke-metadata-config

Update the value to the following for Rancher v2.4.x
```
{
  "refresh-interval-minutes": "60",
  "url": "http://rancher-metadata-airgap/v2-4.json"
}
```

Update the value to the following for Rancher v2.5.x
```
{
  "refresh-interval-minutes": "60",
  "url": "http://rancher-metadata-airgap/v2-5.json"
}
```
