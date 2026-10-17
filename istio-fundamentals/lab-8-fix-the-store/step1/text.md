## Scenario
It's Monday morning and MeshMart is broken: shoppers get error pages, and the on-call
notes say "someone changed something on Friday". There are **two** problems: one in
Istio's configuration, one in the data plane.

## Your task
Find and fix both problems, so that:

- `istioctl analyze` reports no errors in `meshmart`,
- every MeshMart pod is back in the mesh and in sync with istiod,
- `loadgen`'s requests succeed again.

## Rules
- Fix the causes; don't delete and recreate the whole store.
- Open book: `istio.io/latest/docs` is allowed, just like the real exam.

## Useful commands
```
istioctl analyze -n meshmart
```{{exec}}

```
istioctl proxy-status
```{{exec}}

```
kubectl -n meshmart get pods
```{{exec}}

```
kubectl -n meshmart exec deploy/loadgen -- curl -s localhost:8080/stats
```{{exec}}

```
kubectl -n meshmart logs deploy/web -c istio-proxy --tail=20
```{{exec}}

## Check your work

Run the grader to see each check:

```
lab check
```{{exec}}

When every check passes, click **CHECK** below to complete the lab
(it confirms that `lab check` has passed).

Stuck? `lab hint`{{exec}} reveals one hint at a time.
