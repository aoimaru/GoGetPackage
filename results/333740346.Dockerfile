[app/sources/333740346.Dockerfile]
digraph {
  "sha256:844ce158eb3d1a15d63839dc961ebc2fc1db41eaded0f1bf98396af425f2f939" [label="docker-image://docker.io/microsoft/aspnet:windowsservercore-10.0.14393.693" shape="ellipse"];
  "sha256:93e0d8c47a771fe0b0b084bbc6230c3c9a127839a6fc33ddaf833229ff6d6ff9" [label="local://context" shape="ellipse"];
  "sha256:a4d8924912eeba7e73f7340fb05bbf663c55f166233df816e2bbfe4dd519b0fe" [label="copy{src=/UpgradeSample-1.1.0.0.msi, dest=/}" shape="note"];
  "sha256:be1ffb2d01068b2ae7d189a10b20f84279708ac8005670fb19d07652a1425a2a" [label="/bin/sh -c msiexec /i c:\\UpgradeSample-1.1.0.0.msi RELEASENAME=2017.03 /qn" shape="box"];
  "sha256:35202b115bf32ebdff4cbf2beb497e2ef1c98e5af8a6735c0fb877b7c8abc166" [label="sha256:35202b115bf32ebdff4cbf2beb497e2ef1c98e5af8a6735c0fb877b7c8abc166" shape="plaintext"];
  "sha256:844ce158eb3d1a15d63839dc961ebc2fc1db41eaded0f1bf98396af425f2f939" -> "sha256:a4d8924912eeba7e73f7340fb05bbf663c55f166233df816e2bbfe4dd519b0fe" [label=""];
  "sha256:93e0d8c47a771fe0b0b084bbc6230c3c9a127839a6fc33ddaf833229ff6d6ff9" -> "sha256:a4d8924912eeba7e73f7340fb05bbf663c55f166233df816e2bbfe4dd519b0fe" [label=""];
  "sha256:a4d8924912eeba7e73f7340fb05bbf663c55f166233df816e2bbfe4dd519b0fe" -> "sha256:be1ffb2d01068b2ae7d189a10b20f84279708ac8005670fb19d07652a1425a2a" [label=""];
  "sha256:be1ffb2d01068b2ae7d189a10b20f84279708ac8005670fb19d07652a1425a2a" -> "sha256:35202b115bf32ebdff4cbf2beb497e2ef1c98e5af8a6735c0fb877b7c8abc166" [label=""];
}

