[app/sources/224171806.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:35c45e5bdbe2cdf7d63d591ededacf20f172c888beb7c057e7f1ae50fc667b4e" [label="/bin/sh -c apt-get -y -qq update && apt-get -qq -y install     python3-pip     python3-pytest python3-crypto python3-twisted python3-requests python3-yaml     python3-tz &&     rm -rf /var/lib/apt/lists/* &&     pip3 install --quiet bravado==9.2.2 pymongo==3.6.1 pytest-ordering==0.5 minio" shape="box"];
  "sha256:c21ead701e87d9a52e3d599a036da962f7caeaf174e6e89c4e3d95080294ab1e" [label="/bin/sh -c mkdir -p /testing" shape="box"];
  "sha256:0542b0abe1c96543649617cd129eb153947b776c1b33040dc1e222ee56d95f60" [label="sha256:0542b0abe1c96543649617cd129eb153947b776c1b33040dc1e222ee56d95f60" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:35c45e5bdbe2cdf7d63d591ededacf20f172c888beb7c057e7f1ae50fc667b4e" [label=""];
  "sha256:35c45e5bdbe2cdf7d63d591ededacf20f172c888beb7c057e7f1ae50fc667b4e" -> "sha256:c21ead701e87d9a52e3d599a036da962f7caeaf174e6e89c4e3d95080294ab1e" [label=""];
  "sha256:c21ead701e87d9a52e3d599a036da962f7caeaf174e6e89c4e3d95080294ab1e" -> "sha256:0542b0abe1c96543649617cd129eb153947b776c1b33040dc1e222ee56d95f60" [label=""];
}

