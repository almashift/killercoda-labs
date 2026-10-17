# ![AlmaShift](https://www.almashift.com/favicon.ico) Lab 8 complete! 🎉

MeshMart works again: you found and fixed both faults.

### What you did

- ✅ **Fixed the broken route**: `istioctl analyze` pointed at a VirtualService sending
  catalog traffic to a host that doesn't exist
- ✅ **Brought cart back into the mesh**: `istioctl proxy-status` had no proxy for it,
  because its pods opted out of injection
- ✅ **Worked in order**: configuration (`istioctl analyze`), control plane
  (`proxy-status`), then data plane (`proxy-config`, proxy logs)

Want the reasoning behind each step? Run `lab solution`{{exec}}.

---

### What's next

1. **[Continue with the next lesson: Seeing everything: metrics, tracing and Kiali](https://learn.almashift.com/lms/courses/istio-fundamentals/learn/5-2)**
2. Browse the [full Istio Fundamentals course](https://learn.almashift.com/lms/courses/istio-fundamentals) on AlmaShift
