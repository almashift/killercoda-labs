# AlmaShift labs on Killercoda

Browser-based versions of the AlmaShift course labs, published at killercoda.com.

Each scenario is a thin wrapper. At start-up it clones the public labs repo
(https://github.com/almashift/istio-fundamentals), installs Istio and runs `lab start`.
Its CHECK button runs `lab check`, so the tasks, hints and graders are maintained there,
not here.

| Scenario | Lab |
|---|---|
| `istio-fundamentals/lab-1-join-the-mesh` | Lab 1 - Bring MeshMart into the mesh |

Debug a scenario: the setup log is `/tmp/almashift-setup.log` and the last CHECK output is
`/tmp/almashift-check.log` on the scenario machine.

Scenario folders are named `lab-<n>-<slug>`: the folder name is the public URL
(killercoda.com/almashift/course/istio-fundamentals/lab-1-join-the-mesh), and
`istio-fundamentals/structure.json` sets the order labs appear in. Add each new lab there.
