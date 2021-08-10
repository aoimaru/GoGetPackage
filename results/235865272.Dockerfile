[app/sources/235865272.Dockerfile]
digraph {
  "sha256:80fd5c557a4f4c484694c5967b0359ff2332d418a5196adb3e77f74453e81bb5" [label="docker-image://docker.io/library/maven:3.3.9-jdk-8" shape="ellipse"];
  "sha256:08abed3d69b34ebf00f09751b245f9673f8f088a640e6b80e18d6930947bb8b6" [label="local://context" shape="ellipse"];
  "sha256:02a91dbe6bca1b7153136605355ee2657006f01adaca6b253f6738de813429ee" [label="copy{src=/check_branches.sh, dest=/root/}" shape="note"];
  "sha256:b12efaa12a9cd745b91208177b3a11ed567f086018e48bd97182aca4129ea4fe" [label="copy{src=/repairnator-schema.json, dest=/root/}" shape="note"];
  "sha256:06a76193bf5f8cd802aac4371664c99895323de183ef0bb04d5159a0d23ba0ed" [label="/bin/sh -c echo \"Europe/Paris\" > /etc/timezone && chmod +x /root/*.sh" shape="box"];
  "sha256:1b7416fdeba4bdefd4516a59ca3d9148c9c47efbd036b552ed8aae77ce8c165a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7cb6817fba22ada1095a4792192c6ec7b9afd53c8ad41f7910b4ec0c4cd9d660" [label="/bin/sh -c apt-get install curl -y" shape="box"];
  "sha256:969e9bd0fe60b0870d9c6da8a4deb9bc963dbff41fab01d53ff1e97ad22d528c" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:7269cece228c2113e7570a22c366e65ee3ccd3519d70a2c803e6d104856b0c78" [label="/bin/sh -c apt-get install nodejs" shape="box"];
  "sha256:b94b566736e2aae56ab1d7def4201ee63b8bf284e064e029680ab6b4218af05c" [label="/bin/sh -c npm install -g ajv-cli" shape="box"];
  "sha256:b671311b0a3e02be1df21090ccd5477747f9541e8d5e48d50c73082b38d77251" [label="mkdir{path=/root}" shape="note"];
  "sha256:b98efe2614b9a327f246e684efcfa3f6571c54706fdf2d39071af4bf083b18de" [label="sha256:b98efe2614b9a327f246e684efcfa3f6571c54706fdf2d39071af4bf083b18de" shape="plaintext"];
  "sha256:80fd5c557a4f4c484694c5967b0359ff2332d418a5196adb3e77f74453e81bb5" -> "sha256:02a91dbe6bca1b7153136605355ee2657006f01adaca6b253f6738de813429ee" [label=""];
  "sha256:08abed3d69b34ebf00f09751b245f9673f8f088a640e6b80e18d6930947bb8b6" -> "sha256:02a91dbe6bca1b7153136605355ee2657006f01adaca6b253f6738de813429ee" [label=""];
  "sha256:02a91dbe6bca1b7153136605355ee2657006f01adaca6b253f6738de813429ee" -> "sha256:b12efaa12a9cd745b91208177b3a11ed567f086018e48bd97182aca4129ea4fe" [label=""];
  "sha256:08abed3d69b34ebf00f09751b245f9673f8f088a640e6b80e18d6930947bb8b6" -> "sha256:b12efaa12a9cd745b91208177b3a11ed567f086018e48bd97182aca4129ea4fe" [label=""];
  "sha256:b12efaa12a9cd745b91208177b3a11ed567f086018e48bd97182aca4129ea4fe" -> "sha256:06a76193bf5f8cd802aac4371664c99895323de183ef0bb04d5159a0d23ba0ed" [label=""];
  "sha256:06a76193bf5f8cd802aac4371664c99895323de183ef0bb04d5159a0d23ba0ed" -> "sha256:1b7416fdeba4bdefd4516a59ca3d9148c9c47efbd036b552ed8aae77ce8c165a" [label=""];
  "sha256:1b7416fdeba4bdefd4516a59ca3d9148c9c47efbd036b552ed8aae77ce8c165a" -> "sha256:7cb6817fba22ada1095a4792192c6ec7b9afd53c8ad41f7910b4ec0c4cd9d660" [label=""];
  "sha256:7cb6817fba22ada1095a4792192c6ec7b9afd53c8ad41f7910b4ec0c4cd9d660" -> "sha256:969e9bd0fe60b0870d9c6da8a4deb9bc963dbff41fab01d53ff1e97ad22d528c" [label=""];
  "sha256:969e9bd0fe60b0870d9c6da8a4deb9bc963dbff41fab01d53ff1e97ad22d528c" -> "sha256:7269cece228c2113e7570a22c366e65ee3ccd3519d70a2c803e6d104856b0c78" [label=""];
  "sha256:7269cece228c2113e7570a22c366e65ee3ccd3519d70a2c803e6d104856b0c78" -> "sha256:b94b566736e2aae56ab1d7def4201ee63b8bf284e064e029680ab6b4218af05c" [label=""];
  "sha256:b94b566736e2aae56ab1d7def4201ee63b8bf284e064e029680ab6b4218af05c" -> "sha256:b671311b0a3e02be1df21090ccd5477747f9541e8d5e48d50c73082b38d77251" [label=""];
  "sha256:b671311b0a3e02be1df21090ccd5477747f9541e8d5e48d50c73082b38d77251" -> "sha256:b98efe2614b9a327f246e684efcfa3f6571c54706fdf2d39071af4bf083b18de" [label=""];
}

