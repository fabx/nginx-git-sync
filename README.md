# nginx-git-sync

https://github.com/progrium/busybox

kubectl run nginx-wemanity --image=nginx --restart=Never --dry-run -o yaml > nginx-wemanity.yaml

Kubectl apply -f nginx-wemanity.yaml

k expose pod nginx-wemanity --port=80 --name=wemanity

kubectl run bb --rm -it --image=busybox --restart=OnFailure -- wget -O- wemanity

kubectl delete pod <PODNAME> --grace-period=0 --force --namespace <NAMESPACE>

I need a volume to share /usr/share/nginx/html between containers …

https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/



kubectl port-forward --address localhost svc/wemanity 8080:80
