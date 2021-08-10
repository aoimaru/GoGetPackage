[app/sources/406597890.Dockerfile]
digraph {
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" [label="docker-image://docker.io/library/python:3.7-slim" shape="ellipse"];
  "sha256:f1cf0eade459d39a525fd09823cd8a9d1166c0ea22c4ebe04d53d6a02f2b6e17" [label="mkdir{path=/code}" shape="note"];
  "sha256:9412daa7333107f9536fd1bab24284427d0a57924a99e3402a755d858a626246" [label="local://context" shape="ellipse"];
  "sha256:90c7c33038e18927c28adb85f0620767cb0628cef27e761731fa1ad8e3144fbe" [label="copy{src=/Pipfile, dest=/code/},copy{src=/Pipfile.lock, dest=/code/}" shape="note"];
  "sha256:aa0fb19e0201f3bc1506aa0adb9fb1dbb435661d14202f0f5c8f78f0c1b5000e" [label="/bin/sh -c pip install pipenv && pipenv install --system" shape="box"];
  "sha256:7032bb53a92bcb525c7b63371d41b3efb1baa964eed7c852c82dccd2935d876e" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:9dc5f98e9da1cbe2991c255f6bbda437b16cbe21f4c3c121243b944880e7a72e" [label="sha256:9dc5f98e9da1cbe2991c255f6bbda437b16cbe21f4c3c121243b944880e7a72e" shape="plaintext"];
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" -> "sha256:f1cf0eade459d39a525fd09823cd8a9d1166c0ea22c4ebe04d53d6a02f2b6e17" [label=""];
  "sha256:f1cf0eade459d39a525fd09823cd8a9d1166c0ea22c4ebe04d53d6a02f2b6e17" -> "sha256:90c7c33038e18927c28adb85f0620767cb0628cef27e761731fa1ad8e3144fbe" [label=""];
  "sha256:9412daa7333107f9536fd1bab24284427d0a57924a99e3402a755d858a626246" -> "sha256:90c7c33038e18927c28adb85f0620767cb0628cef27e761731fa1ad8e3144fbe" [label=""];
  "sha256:90c7c33038e18927c28adb85f0620767cb0628cef27e761731fa1ad8e3144fbe" -> "sha256:aa0fb19e0201f3bc1506aa0adb9fb1dbb435661d14202f0f5c8f78f0c1b5000e" [label=""];
  "sha256:aa0fb19e0201f3bc1506aa0adb9fb1dbb435661d14202f0f5c8f78f0c1b5000e" -> "sha256:7032bb53a92bcb525c7b63371d41b3efb1baa964eed7c852c82dccd2935d876e" [label=""];
  "sha256:9412daa7333107f9536fd1bab24284427d0a57924a99e3402a755d858a626246" -> "sha256:7032bb53a92bcb525c7b63371d41b3efb1baa964eed7c852c82dccd2935d876e" [label=""];
  "sha256:7032bb53a92bcb525c7b63371d41b3efb1baa964eed7c852c82dccd2935d876e" -> "sha256:9dc5f98e9da1cbe2991c255f6bbda437b16cbe21f4c3c121243b944880e7a72e" [label=""];
}

