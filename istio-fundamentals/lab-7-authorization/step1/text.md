## Scenario
Any pod in the mesh can call `catalog` today, with any HTTP method. Only the storefront
(`web`) needs it, and only to **read** products. Lock it down.

## Your task
Configure Istio so that `catalog`:

- accepts **GET** requests from **`web`**,
- rejects every other caller (e.g. `cart`, `orders`) with **HTTP 403**,
- rejects non-GET requests (e.g. POST) from `web` too.

The store must keep working for shoppers.

## Rules
- Identify `web` by its **workload identity** (service account), not by IP address.
- Scope the change to `meshmart`: nothing in `istio-system`.
- Open book: `istio.io/latest/docs` is allowed, just like the real exam.

## Useful commands
```
kubectl -n meshmart get sa
```{{exec}}

```
kubectl -n meshmart exec deploy/cart -- curl -s -o /dev/null -w "%{http_code}\n" http://catalog/
```{{exec}}

```
kubectl -n meshmart exec deploy/web  -- curl -s -o /dev/null -w "%{http_code}\n" -X POST http://catalog/
```{{exec}}

## Check your work

Run the grader to see each check:

```
lab check
```{{exec}}

When every check passes, click **CHECK** below to complete the lab
(it confirms that `lab check` has passed).

Stuck? `lab hint`{{exec}} reveals one hint at a time.
