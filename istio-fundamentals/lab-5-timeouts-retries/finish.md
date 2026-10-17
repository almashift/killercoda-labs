# ![AlmaShift](https://www.almashift.com/favicon.ico) Lab 5 complete! 🎉

The store stays fast even though catalog still hangs on 1 request in 5.

### What you did

- ✅ **Set a per-try timeout** of 1 second, so `web`'s Envoy gives up on a slow attempt
- ✅ **Added retries** (up to 2 more attempts), so almost every call still succeeds
- ✅ **Changed nothing in the apps**: the sidecar enforces the policy, and Envoy's
  `upstream_rq_retry` counter proved the retries happened

`timeout` caps the whole call; `perTryTimeout` caps each attempt, so a retry can still win.

Want the reasoning behind each step? Run `lab solution`{{exec}}.

---

### What's next

1. **[Continue with the next lesson: Reaching the outside world](https://learn.almashift.com/lms/courses/istio-fundamentals/learn/3-5)**
2. Browse the [full Istio Fundamentals course](https://learn.almashift.com/lms/courses/istio-fundamentals) on AlmaShift
