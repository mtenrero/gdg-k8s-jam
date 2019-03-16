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

## Exposing the app

In order to expose the deployment to the real world, we need a Google Load Balancer, it can be created manually using the Dashboard. But it's better to deploy it as code

Kubernetes connects to Google Infrastructer and creates the needed resources. The needed resources are a Service (inside Kubernetes) and a LoadBalancer (Google).

### Internal Service 

`kubectl expose deploy/<DEPLOY_NAME> --port <PORT>` will create an internal Service inside the cluster.

### External Load Balancer $

`kubectl expose deploy/<DEPLOY_NAME> --type=LoadBalancer --port <PORT>` Instead this command will create a Google Load Balancer with external reachability. After a few seconds it can be reached in the Exposed IP:

```bash
mtenrero@MacBook-Pro-de-Marcos   ~/KubernetesStudyJam     master   kubectl get svc --watch                                                                     175  12:20:48 
NAME             TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)          AGE
kubernetes       ClusterIP      10.47.240.1     <none>          443/TCP          40m
simple-express   LoadBalancer   10.47.248.158   35.246.38.130   9000:31112/TCP   1m
```