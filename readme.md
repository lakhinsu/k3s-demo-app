# About
This repo contains a demo application to be deployed on a Kuberenetes environment.

# Run locally
Execute these commands to run the application locally.
- `pip install requirements.txt`
- `uvicorn main:app --host <host> --port <port>`

# Run on Kubernetes
- Build the docker image and publish it on https://hub.docker.com/ repository.
- Edit the k8s.deployment.yaml and replace `your-image` with the your published image.
- Add docker credentials on your Kubernetes environment (if required). This can be done by following this [documentation](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/#create-a-secret-by-providing-credentials-on-the-command-line). 
- Apply Kubernetes configuration by executing following commands.
- `kubectl apply -f k8s.deployment.yaml`
- `kubectl appliy -f k8s.service.yaml`
- `kubectl apply -f k8.ingress.yaml`