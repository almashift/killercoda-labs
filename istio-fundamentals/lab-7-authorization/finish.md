# ![AlmaShift](https://www.almashift.com/favicon.ico) Lab 7 complete! 🎉

Only `web` can read from catalog now. Everyone else gets a 403.

### What you did

- ✅ **Added an ALLOW policy** on catalog: once a workload has one, anything that matches
  no rule is denied
- ✅ **Matched the caller's identity**, `web`'s service account, taken from its mTLS
  certificate, so it can't be faked with an IP or a header
- ✅ **Combined identity and method in one rule**: web's GETs pass, its POSTs don't

Remember the evaluation order: CUSTOM, then DENY, then ALLOW.

Want the reasoning behind each step? Run `lab solution`{{exec}}.

---

### What's next

1. **[Continue with the next lesson: JWT and edge TLS: a first look](https://learn.almashift.com/lms/courses/istio-fundamentals/learn/4-3)**
2. Browse the [full Istio Fundamentals course](https://learn.almashift.com/lms/courses/istio-fundamentals) on AlmaShift
