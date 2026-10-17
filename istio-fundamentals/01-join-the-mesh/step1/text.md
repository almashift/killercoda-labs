## Scenario

Istio is installed, and MeshMart is running in the `meshmart` namespace, but none of
its pods are in the mesh yet: no sidecars, no mTLS, no telemetry.

## Your task

Put **every** MeshMart workload in the mesh (sidecar mode):

- each pod in `meshmart` runs an Envoy sidecar (`istio-proxy`)
- pods created later join the mesh automatically
- the store keeps serving `loadgen`'s traffic

**Rules:** don't delete or recreate the Deployments; restart them instead.
The Istio docs at `istio.io/latest/docs` are allowed.

## Useful commands

```
kubectl -n meshmart get pods
```{{exec}}

```
kubectl get ns meshmart --show-labels
```{{exec}}

```
istioctl proxy-status
```{{exec}}

```
kubectl -n meshmart exec deploy/loadgen -- curl -s localhost:8080/stats
```{{exec}}

## Check your work

Run the grader to see each check (it watches the store's traffic for about 15 seconds):

```
lab check 1
```{{exec}}

When every check passes, click **CHECK** below to complete the lab
(it confirms that `lab check 1` has passed).

Stuck? `lab hint 1`{{exec}} reveals one hint at a time.
