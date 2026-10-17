## Scenario
Shoppers complain that MeshMart sometimes freezes. The cause: about **1 in 5** requests to
`catalog` hangs for 10 seconds, and `web` waits for every one of them. The catalog team
is on it, but you need the store to stay fast today.

## Your task
Make calls from `web` to `catalog` resilient:

- give up on any single attempt after **1 second**,
- and **retry** a failed or slow attempt **up to 2 more times**,

so no call from web to catalog takes longer than about 3 seconds, and almost all succeed.

## Rules
- Fix it in the mesh. Do not change catalog's Deployments (the 10s hangs stay).
- Open book: `istio.io/latest/docs` is allowed, just like the real exam.

## Useful commands
```
kubectl -n meshmart exec deploy/web -- sh -c 'for i in 1 2 3 4 5; do curl -s -o /dev/null -w "%{http_code} %{time_total}s\n" http://catalog/; done'
```{{exec}}

```
kubectl -n meshmart exec deploy/web -c istio-proxy -- pilot-agent request GET stats | grep catalog | grep retry
```{{exec}}

```
istioctl analyze -n meshmart
```{{exec}}

## Check your work

Run the grader to see each check:

```
lab check
```{{exec}}

When every check passes, click **CHECK** below to complete the lab
(it confirms that `lab check` has passed).

Stuck? `lab hint`{{exec}} reveals one hint at a time.
