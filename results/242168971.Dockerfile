[app/sources/242168971.Dockerfile]
digraph {
  "sha256:3ce320d629798b8f399f2513ec6ec735ce89e132b35c5802380dcf21da8a0286" [label="docker-image://docker.io/library/node:9.4.0" shape="ellipse"];
  "sha256:504a38c72eeb8b51f015473bb5cba11e8b0daa5204842d5f0f11dc5c77e0adbd" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:3ea5be95a2487ff182c9fce504419c740a47782d91b3a806e3c6ebede7c1898b" [label="local://context" shape="ellipse"];
  "sha256:c2733b965bb3c70e50be012a61385a68d02edbde3759cb1d3d370bf23faa21cd" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:28303940e9811b3e1a06cd45f9d34d5e2e3b577e51d057cc8dafe170889ea769" [label="/bin/sh -c /bin/bash -c 'yarn --pure-lockfile && yarn build'" shape="box"];
  "sha256:6df9c377dd7a6147c3067aa873725759c476042d63a309607c1339a20c4f47b9" [label="sha256:6df9c377dd7a6147c3067aa873725759c476042d63a309607c1339a20c4f47b9" shape="plaintext"];
  "sha256:3ce320d629798b8f399f2513ec6ec735ce89e132b35c5802380dcf21da8a0286" -> "sha256:504a38c72eeb8b51f015473bb5cba11e8b0daa5204842d5f0f11dc5c77e0adbd" [label=""];
  "sha256:504a38c72eeb8b51f015473bb5cba11e8b0daa5204842d5f0f11dc5c77e0adbd" -> "sha256:c2733b965bb3c70e50be012a61385a68d02edbde3759cb1d3d370bf23faa21cd" [label=""];
  "sha256:3ea5be95a2487ff182c9fce504419c740a47782d91b3a806e3c6ebede7c1898b" -> "sha256:c2733b965bb3c70e50be012a61385a68d02edbde3759cb1d3d370bf23faa21cd" [label=""];
  "sha256:c2733b965bb3c70e50be012a61385a68d02edbde3759cb1d3d370bf23faa21cd" -> "sha256:28303940e9811b3e1a06cd45f9d34d5e2e3b577e51d057cc8dafe170889ea769" [label=""];
  "sha256:28303940e9811b3e1a06cd45f9d34d5e2e3b577e51d057cc8dafe170889ea769" -> "sha256:6df9c377dd7a6147c3067aa873725759c476042d63a309607c1339a20c4f47b9" [label=""];
}

