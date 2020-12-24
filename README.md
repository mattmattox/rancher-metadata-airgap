# rancher-metadata-airgap
A simple pod for publishing the Rancher metadata.json in an airgap setup.

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
