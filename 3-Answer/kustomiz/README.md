## CREATE NAMESPACE

kubectl create ns dev

kubectl create ns prod


## TEST COMMAND เพื่อดูค่าและตรวจสอบ

```sh
kubectl apply -n prod -k overlays/prod --dry-run=client -o yaml
kubectl apply -n dev -k overlays/dev --dry-run=client -o yaml
```


## RUNNING COMMAND การใช้งาน

```sh
kubectl apply -n prod -k overlays/prod
kubectl apply -n dev -k overlays/dev

kubectl delete -n prod -k overlays/prod
kubectl delete -n dev -k overlays/dev
```





