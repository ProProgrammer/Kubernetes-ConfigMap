# Create the ConfigMap from the configuration file
kubectl create configmap example-redis-config --from-file=redis-config

# Show the ConfigMap in YAML format
kubectl get configmap example-redis-config -o yaml

# Create the Redis pod
kubectl create -f redis.yaml

# Check the pod; wait for the pod to be created
kubectl get pods

# Check the configuration
kubectl exec -it redis redis-cli

# Execute the following commands in Redis shell at 127.0.0.1:6379
CONFIG GET maxmemory
CONFIG GET maxmemory-policy

# Clean up
kubectl delete configmap example-redis-config
kubectl delete pod redis