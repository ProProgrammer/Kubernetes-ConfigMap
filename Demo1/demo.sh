# Deploy the ConfigMap
kubectl create -f configmap.yaml

# Create the Pod with Env Var
kubectl create -f pod-cmd.yaml

# Check the logs
kubectl logs test-pod-cmd

# Create the pod with Env Var
kubectl create -f pod-env.yaml

# Check the env vars
kubectl exec -it test-pod-env /bin/sh

# Create the pod with Env Var
kubectl create -f pod-vol.yaml

# Check the logs
kubectl logs test-pod-vol

# Access the shell
kubectl exec -it test-pod-vol /bin/sh

# Check the files
cd /etc/config
cat log.level
cat log.location
