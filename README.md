# deployment

## Running cluster of services locally with docker-compose
This will start cluster composed of one instance of each service
* [fetcher](https://github.com/lk2-iosr/fetcher)
* [stats](https://github.com/lk2-iosr/stats)
* [publisher](https://github.com/lk2-iosr/publisher)

### Prerequsites 
 * Installed Docker
 * Installed Docker-compose

### Instructions
1. Clone this repository: 
```git clone https://github.com/lk2-iosr/deployment```
2. Go to compose directory
```cd compose```
3. Fill configs fetcher.env, publisher.env as described at [fetcher](https://github.com/lk2-iosr/fetcher) and [publisher](https://github.com/lk2-iosr/publisher) respectively.
4. Make sure that services images (with tags matching those specified in docker-compose.yml file) are available either in your local docker repository or on Dockerhub. 
5. Execute runCompose.sh script 
```bash runCompose.sh```

## Running cluster of services locally with Kubernetes on Minikube

### Prerequsites 
 * Installed kubectl
 * Installed Minikube

### Instructions
1. Go to kubernetes directory
```cd kubernetes```
2. Fill configs fetcher-fetcher-env-configmap.yaml, publisher-publisher-env-configmap.yaml as described at [fetcher](https://github.com/lk2-iosr/fetcher) and [publisher](https://github.com/lk2-iosr/publisher) respectively.
3. Start Minikube
```minikube start```
4. Go to parent directory
```cd ..```
5. Execute applyConfig.sh script
```bash applyConfig.sh```
6. Monitor whether deployment was successful with
```watch kubectl get all```


## Running cluster of services on AWS

### Prerequsites 
 * Installed kubectl
 * configured AWS cluster with kops

### Instructions
1. Go to kubernetes directory
```cd kubernetes```
2. Fill configs fetcher-fetcher-env-configmap.yaml, publisher-publisher-env-configmap.yaml as described at [fetcher](https://github.com/lk2-iosr/fetcher) and [publisher](https://github.com/lk2-iosr/publisher) respectively.
3. Go to parent directory
```cd ..```
4. Execute applyConfig.sh script
```bash applyConfig.sh```
5. Monitor whether deployment was successful with
```watch kubectl get all```

