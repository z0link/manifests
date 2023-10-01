
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[0-9a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

helm-repos: ## add helm repos
	helm repo add cilium               https://helm.cilium.io
	helm repo add metrics-server       https://kubernetes-sigs.github.io/metrics-server/
	helm repo add ingress-nginx        https://kubernetes.github.io/ingress-nginx
	helm repo update

create-deployments: ## create templates
	helm template --namespace=kube-system  -f ./cilium.yaml cilium \
		cilium/cilium > ./cilium-result.yaml

	helm template --namespace=kube-system -f ./metrics-server.yaml metrics-server \
		metrics-server/metrics-server > ./metrics-server-result.yaml

	helm template --namespace=ingress-nginx --version=4.7.0 -f ./ingress.yaml ingress-nginx \
		ingress-nginx/ingress-nginx > ./ingress-result.yaml