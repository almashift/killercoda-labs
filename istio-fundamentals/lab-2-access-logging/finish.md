# ![AlmaShift](https://www.almashift.com/favicon.ico) Lab 2 complete! 🎉

Every proxy in the mesh now writes an access log line for each request, without a single
restart.

### What you did

- ✅ **Created a Telemetry resource** in the root namespace (`istio-system`), so access
  logging applies to the whole mesh
- ✅ **Used the built-in `envoy` provider**, which writes to each proxy's stdout:
  `kubectl logs ... -c istio-proxy`
- ✅ **Let istiod push the change** to the running proxies: no pods were restarted

Remember the response flags in those lines (`UH`, `UF`, `UT`, `NR`, `URX`): they're the
first clue when a request fails.

Want the reasoning behind each step? Run `lab solution`{{exec}}.

---

### What's next

1. **[Continue with the next lesson: Letting users in: the Gateway API](https://learn.almashift.com/lms/courses/istio-fundamentals/learn/3-1)**
2. Browse the [full Istio Fundamentals course](https://learn.almashift.com/lms/courses/istio-fundamentals) on AlmaShift
