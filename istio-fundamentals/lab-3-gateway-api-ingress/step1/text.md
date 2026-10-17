## Scenario
MeshMart runs in the mesh, but customers outside the cluster can't reach it yet:
there is no ingress. The platform team has standardised on the
**Kubernetes Gateway API** (not Istio's own `Gateway`/`VirtualService`), with Istio as
the implementation.

## Your task
In namespace `meshmart`, open the store through a gateway:

- a Gateway named **`meshmart-gateway`**, implemented by Istio, listening for HTTP on **port 80**;
- for host **`shop.meshmart.local`**:
  - `/api` and every path below it (e.g. `/api/orders`) go to Service **`orders`**,
  - every other path (e.g. `/`, `/apidocs`) goes to Service **`web`**;
- requests for any other host must **not** reach the store (HTTP 404).

The `visitor` pod is outside the mesh and plays a customer. It calls the gateway's
Service, which Istio creates for you, with a `Host` header.

## Rules
- Use the Gateway API (`gateway.networking.k8s.io`). No Istio `Gateway` or `VirtualService`.
- Let Istio deploy the gateway for you. Do not create the gateway's Deployment or Service yourself.
- Do not edit the MeshMart Deployments or Services, and do not inject a sidecar into `visitor`.
- Open book: `istio.io/latest/docs` and `gateway-api.sigs.k8s.io` are allowed.

## Useful commands
```
kubectl -n meshmart get gateway,httproute,deploy,svc
```{{exec}}

```
kubectl -n meshmart exec deploy/visitor -- curl -s -H 'Host: shop.meshmart.local' http://meshmart-gateway-istio/api
```{{exec}}

```
kubectl -n meshmart get gateway meshmart-gateway -o yaml     # read status.conditions
```{{exec}}

```
istioctl analyze -n meshmart
```{{exec}}

This lab cluster has no cloud load balancer, so a `LoadBalancer` Service
stays `<pending>`, and a Gateway that asks for one reports `PROGRAMMED False`
(`AddressNotAssigned`). That on its own does not stop in-cluster traffic.

## Check your work

Run the grader to see each check:

```
lab check
```{{exec}}

When every check passes, click **CHECK** below to complete the lab
(it confirms that `lab check` has passed).

Stuck? `lab hint`{{exec}} reveals one hint at a time.
