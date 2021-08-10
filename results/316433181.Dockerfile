[app/sources/316433181.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:e546b601832e8e148d019c7edd894d6d82a19aecca5e62cc82455017718ba682" [label="/bin/sh -c apk add --no-cache ca-certificates && update-ca-certificates" shape="box"];
  "sha256:25f2a1aef4ea02986c256d71ce5e8d8e85d8e071e2256389fa206c8153176f1c" [label="local://context" shape="ellipse"];
  "sha256:5ad74bf3cdd6c894e7f173cd14d25a41106f839c07e6e573fa36ba6361a61298" [label="copy{src=/rootfs/brigade-api, dest=/usr/bin/brigade-api}" shape="note"];
  "sha256:766d7f4569c71089a608b32628591c56d059bb2e6ed6942113bade37a93d94aa" [label="sha256:766d7f4569c71089a608b32628591c56d059bb2e6ed6942113bade37a93d94aa" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:e546b601832e8e148d019c7edd894d6d82a19aecca5e62cc82455017718ba682" [label=""];
  "sha256:e546b601832e8e148d019c7edd894d6d82a19aecca5e62cc82455017718ba682" -> "sha256:5ad74bf3cdd6c894e7f173cd14d25a41106f839c07e6e573fa36ba6361a61298" [label=""];
  "sha256:25f2a1aef4ea02986c256d71ce5e8d8e85d8e071e2256389fa206c8153176f1c" -> "sha256:5ad74bf3cdd6c894e7f173cd14d25a41106f839c07e6e573fa36ba6361a61298" [label=""];
  "sha256:5ad74bf3cdd6c894e7f173cd14d25a41106f839c07e6e573fa36ba6361a61298" -> "sha256:766d7f4569c71089a608b32628591c56d059bb2e6ed6942113bade37a93d94aa" [label=""];
}

