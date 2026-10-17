## Scenario
Shoppers report the odd failed page, but nobody can see which requests went where:
MeshMart's Envoy proxies are not writing access logs.

## Your task
Make the MeshMart proxies write an **access log line for every request**, so that a
request through `web` shows up in the `istio-proxy` logs of both `web` and `catalog`.

## Rules
- Do **not** edit the Deployments or pods (no annotations, no restarts needed).
- Use Istio configuration. Either a mesh-wide or a `meshmart`-only setting is fine.
- Open book: `istio.io/latest/docs` is allowed, just like the real exam.

## Useful commands
```
kubectl -n meshmart logs deploy/web -c istio-proxy --tail=5
```{{exec}}

```
kubectl -n meshmart exec deploy/loadgen -- curl -s -H "x-request-id: hello-123" http://web/ -o /dev/null
```{{exec}}

```
kubectl get telemetry -A
```{{exec}}

## Check your work

Run the grader to see each check:

```
lab check
```{{exec}}

When every check passes, click **CHECK** below to complete the lab
(it confirms that `lab check` has passed).

Stuck? `lab hint`{{exec}} reveals one hint at a time.
