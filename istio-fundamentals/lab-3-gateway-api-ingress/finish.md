# ![AlmaShift](https://www.almashift.com/favicon.ico) Lab 3 complete! 🎉

Customers can reach MeshMart through a gateway that Istio deployed and configured for you.

### What you did

- ✅ **Created a Gateway** with `gatewayClassName: istio`, and Istio deployed
  `meshmart-gateway-istio` (a Deployment and a Service) for it
- ✅ **Attached an HTTPRoute** for `shop.meshmart.local`: `/api` goes to `orders`, every
  other path to `web`
- ✅ **Kept other hosts out**: a request for any other host matches no route and gets a 404

Want the reasoning behind each step? Run `lab solution`{{exec}}.

---

### What's next

1. **[Continue with the next lesson: Routing with VirtualService and DestinationRule](https://learn.almashift.com/lms/courses/istio-fundamentals/learn/3-2)**
2. Browse the [full Istio Fundamentals course](https://learn.almashift.com/lms/courses/istio-fundamentals) on AlmaShift
