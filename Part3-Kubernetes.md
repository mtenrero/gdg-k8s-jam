## Part III - Kubernetes 

## Initializing Kubernetes Cluster

Create a Kubernetes Cluster in the Google Cloud Platform Dashboard

## Installing GCloud kubectl

`gcloud components install kubectl`

### Configuring & Getting cluster credential

`gcloud container clusters list` and get the name and the location

`gcloud container clusters get-credentials <CLUSTER_NAME> --region <LOCATION>`

## Running the Workload & Creating the deployment

`kubectl run <NAME> --image=<IMAGE_REGISTRY_URL> --port <PORT_TO_BIND>`

### Port Forwarding & test locally

`kubectl port-forward <DEPLOYMENT>`

## Freeze deployment into YAML

`kubectl get deploy <DEPLOY_NAME> -o yaml > filename.yaml`

### Apply YAML into k8s

`kubectl apply -f deployment.yaml`