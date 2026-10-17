# ![AlmaShift](https://www.almashift.com/favicon.ico) Lab 6 complete! 🎉

Every connection inside MeshMart is now mutual TLS, with one deliberate, narrow exception.

### What you did

- ✅ **Made the namespace STRICT** with a PeerAuthentication named `default`, so sidecars
  accept only mTLS
- ✅ **Kept one exception**: a workload-level PERMISSIVE policy on `orders`, so the legacy
  `reports` job can still read from it
- ✅ **Relied on precedence**: workload beats namespace beats mesh, so the most specific
  policy wins

In production, run PERMISSIVE first and confirm every client sends mTLS before you go STRICT.

Want the reasoning behind each step? Run `lab solution`{{exec}}.

---

### What's next

1. **[Continue with the next lesson: Authorization policies](https://learn.almashift.com/lms/courses/istio-fundamentals/learn/4-2)**
2. Browse the [full Istio Fundamentals course](https://learn.almashift.com/lms/courses/istio-fundamentals) on AlmaShift
