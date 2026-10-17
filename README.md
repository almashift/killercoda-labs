# AlmaShift labs on Killercoda

Browser-based versions of the AlmaShift course labs, published at
https://killercoda.com/almashift.

Each scenario is a thin wrapper. At start-up it clones the public labs repo
(https://github.com/almashift/istio-fundamentals), installs Istio on Killercoda's cluster
and runs `lab start <n>`, locked to that one lab. Its CHECK button confirms that `lab check`
passed, so the tasks, hints, solutions and graders are maintained in the labs repo, not here.

| Lab | Scenario (and URL path) |
|---|---|
| 1 - Bring MeshMart into the mesh | `istio-fundamentals/lab-1-join-the-mesh` |
| 2 - Turn on access logging for the store | `istio-fundamentals/lab-2-access-logging` |
| 3 - Open the store to customers (Gateway API) | `istio-fundamentals/lab-3-gateway-api-ingress` |
| 4 - Canary catalog v2 at 90/10 | `istio-fundamentals/lab-4-canary-catalog` |
| 5 - Keep checkout fast (timeouts and retries) | `istio-fundamentals/lab-5-timeouts-retries` |
| 6 - Lock down the store (strict mTLS) | `istio-fundamentals/lab-6-strict-mtls` |
| 7 - Only web may call catalog (authorization) | `istio-fundamentals/lab-7-authorization` |
| 8 - Fix the broken store (troubleshooting) | `istio-fundamentals/lab-8-fix-the-store` |

The public URL is `https://killercoda.com/almashift/course/<scenario path>`. Once a URL is in
the LMS, never rename its folder.

## Changing a scenario

The scenarios are generated; don't edit them by hand.

```
bash .scaffold/generate.sh        # reads ../istio-fundamentals by default
```

- Task text, title and time come from the labs repo (`labs/<nn>-*/task.md`, `meta.env`).
- `.scaffold/labs.tsv`: difficulty, card description and the next LMS lesson for each lab.
- `.scaffold/recaps/<n>.md`: the finish page's "What you did".
- `.scaffold/almashift-wait`: the setup progress shown in the terminal.

`structure.json` (lab order) is generated too. Commit the result and push: Killercoda
syncs through the webhook.

## Debugging

On a scenario machine, the setup log is `/tmp/almashift-setup.log`.
