# ![AlmaShift](https://www.almashift.com/favicon.ico) Lab 4 complete! 🎉

catalog v2 now gets 10% of the traffic, and v1 the other 90%, whatever the pod counts.

### What you did

- ✅ **Defined subsets** `v1` and `v2` in a DestinationRule, selected by the `version` label
- ✅ **Split traffic 90/10** with a VirtualService that routes to those subsets
- ✅ **Let the caller's sidecar decide**: `web`'s Envoy applies the split, which is why
  callers must be in the mesh

To roll forward, raise v2's weight in steps (50/50, then 0/100) and watch the error rates.

Want the reasoning behind each step? Run `lab solution`{{exec}}.

---

### What's next

1. **[Continue with the next lesson: Handling failure](https://learn.almashift.com/lms/courses/istio-fundamentals/learn/3-4)**
2. Browse the [full Istio Fundamentals course](https://learn.almashift.com/lms/courses/istio-fundamentals) on AlmaShift
