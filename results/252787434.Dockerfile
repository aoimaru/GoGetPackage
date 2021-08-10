[app/sources/252787434.Dockerfile]
digraph {
  "sha256:58b45e2b7512199302a29c5729cd615d8a5201f2174984bf55db19aabd00d010" [label="docker-image://docker.io/brimstone/ubuntu:14.04" shape="ellipse"];
  "sha256:e12dbcda5e55ad86eb55a2eb1be0bd0b4e1ea2d7f45ed44d082275762b08a80f" [label="/bin/sh -c apt-get update && apt -y install iperf && apt-get clean && rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:0744133edb40753047519f163082ba64872b6d97e89038e59976c26860065f6e" [label="sha256:0744133edb40753047519f163082ba64872b6d97e89038e59976c26860065f6e" shape="plaintext"];
  "sha256:58b45e2b7512199302a29c5729cd615d8a5201f2174984bf55db19aabd00d010" -> "sha256:e12dbcda5e55ad86eb55a2eb1be0bd0b4e1ea2d7f45ed44d082275762b08a80f" [label=""];
  "sha256:e12dbcda5e55ad86eb55a2eb1be0bd0b4e1ea2d7f45ed44d082275762b08a80f" -> "sha256:0744133edb40753047519f163082ba64872b6d97e89038e59976c26860065f6e" [label=""];
}

