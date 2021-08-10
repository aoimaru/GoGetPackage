[app/sources/333740338.Dockerfile]
digraph {
  "sha256:7a722ce74c1b3e2eefd7dc577dae28b59ba302a961b5938a96f1c82a57293339" [label="docker-image://docker.io/microsoft/windowsservercore:10.0.14393.693" shape="ellipse"];
  "sha256:d2123116e7e638feab31ecebda48db4dc4c0d287dea7827a7e3d57aca431171b" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Set-ItemProperty -path 'HKLM:\\SYSTEM\\CurrentControlSet\\Services\\Dnscache\\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord" shape="box"];
  "sha256:59d5144dc930217921d2f9c9e13351c16549517fec5c18ade6bcbdd39c437339" [label="mkdir{path=/save-prospect-handler}" shape="note"];
  "sha256:621e3e1fa083a3900405ad79dcd0f7d4ec24d220e3bdd54c42eecf0d660f593c" [label="local://context" shape="ellipse"];
  "sha256:62941d7ceb759cb745f2fc4ea0ccc470f35316f5dd16fb6d7e800ae3aaf69653" [label="copy{src=/SaveProspectHandler, dest=/save-prospect-handler/}" shape="note"];
  "sha256:59b4338b4bb173d3af24bb85dd8282115339e9420d15bfd1868a233f94759f62" [label="sha256:59b4338b4bb173d3af24bb85dd8282115339e9420d15bfd1868a233f94759f62" shape="plaintext"];
  "sha256:7a722ce74c1b3e2eefd7dc577dae28b59ba302a961b5938a96f1c82a57293339" -> "sha256:d2123116e7e638feab31ecebda48db4dc4c0d287dea7827a7e3d57aca431171b" [label=""];
  "sha256:d2123116e7e638feab31ecebda48db4dc4c0d287dea7827a7e3d57aca431171b" -> "sha256:59d5144dc930217921d2f9c9e13351c16549517fec5c18ade6bcbdd39c437339" [label=""];
  "sha256:59d5144dc930217921d2f9c9e13351c16549517fec5c18ade6bcbdd39c437339" -> "sha256:62941d7ceb759cb745f2fc4ea0ccc470f35316f5dd16fb6d7e800ae3aaf69653" [label=""];
  "sha256:621e3e1fa083a3900405ad79dcd0f7d4ec24d220e3bdd54c42eecf0d660f593c" -> "sha256:62941d7ceb759cb745f2fc4ea0ccc470f35316f5dd16fb6d7e800ae3aaf69653" [label=""];
  "sha256:62941d7ceb759cb745f2fc4ea0ccc470f35316f5dd16fb6d7e800ae3aaf69653" -> "sha256:59b4338b4bb173d3af24bb85dd8282115339e9420d15bfd1868a233f94759f62" [label=""];
}

