![AlmaShift](https://www.almashift.com/apple-touch-icon.png)

# 🎉 Lab 01 complete!

MeshMart is in the mesh. Every pod runs an Envoy sidecar, istiod configures them all,
and the store never stopped serving its shoppers.

### What you did

- ✅ **Labelled the namespace** with `istio-injection=enabled`, so every new pod in
  `meshmart` gets a sidecar
- ✅ **Restarted the Deployments**, so each pod came back with `istio-proxy` (`2/2`)
- ✅ **Kept the store up**: a rolling restart replaces pods one at a time, which is why
  `loadgen` saw no failed requests

### Go deeper

Run `lab solution 1`{{exec}} for the reasoning behind each step.

---

### ▶ Continue the course

**[Back to Istio Fundamentals on AlmaShift →](https://learn.almashift.com/lms/courses/istio-fundamentals)**

Next up: **Customising and upgrading Istio**.
