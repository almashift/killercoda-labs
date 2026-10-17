Part of **Istio Fundamentals**, the free course by [AlmaShift](https://almashift.com).
Watch the lessons at [learn.almashift.com](https://learn.almashift.com).

**In this lab:** Put every workload of a running store into the Istio mesh, without downtime.

You get a real Kubernetes cluster for this session. While you read this, the terminal
on the right is installing **Istio 1.27** and the **MeshMart** example store
(about a minute).

MeshMart is a small online shop made of several services: `web`, `catalog` (v1 and v2),
`cart` and `orders`. A `loadgen` pod sends it a steady stream of shopper traffic.

Click **START** when the terminal says *Your lab is ready*.
