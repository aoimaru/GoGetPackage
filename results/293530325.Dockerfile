[app/sources/293530325.Dockerfile]
digraph {
  "sha256:a37ce36545563fc4158a4815e769bf5e64ae32aa43846c9623bcfc0271bd56b2" [label="docker-image://docker.io/resin/rpi-raspbian:latest" shape="ellipse"];
  "sha256:f46d81e645b753e634b5678db6b21ed08f1d918f14b09d563ca2612b2e77ae8f" [label="/bin/sh -c apt-get update && apt-get -y dist-upgrade &&     apt-get install -y --no-install-suggests mongodb # && VOLUME [\"/docker-shares\"]" shape="box"];
  "sha256:051bb888e0d9718f6f9f12efd6ad9aea92ee4d1e2b8e91f04062d3c5d298d1d1" [label="sha256:051bb888e0d9718f6f9f12efd6ad9aea92ee4d1e2b8e91f04062d3c5d298d1d1" shape="plaintext"];
  "sha256:a37ce36545563fc4158a4815e769bf5e64ae32aa43846c9623bcfc0271bd56b2" -> "sha256:f46d81e645b753e634b5678db6b21ed08f1d918f14b09d563ca2612b2e77ae8f" [label=""];
  "sha256:f46d81e645b753e634b5678db6b21ed08f1d918f14b09d563ca2612b2e77ae8f" -> "sha256:051bb888e0d9718f6f9f12efd6ad9aea92ee4d1e2b8e91f04062d3c5d298d1d1" [label=""];
}

