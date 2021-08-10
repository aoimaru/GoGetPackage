[app/sources/221620715.Dockerfile]
digraph {
  "sha256:129479e881e6fe15f9b85d1e7071ed232638d909f299e1e68b38a9571c34be53" [label="docker-image://docker.io/library/ruby:2.1.8" shape="ellipse"];
  "sha256:cf120f1ed6d5212058163e790186dae4eabb99bf11e0c81fa231d9b769420973" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a5efc67b10e31b62b0282b05fd897b37db4dd0193f847df2c6e65e93fb963f00" [label="/bin/sh -c apt-get install netcat -y" shape="box"];
  "sha256:e869cde5745b36318639a8016182724fe56c3238f9b61aa0f1033f52fef012ff" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:f43df3eaefc51a614bb04dc6aec81ed5689aabb0090e8d40556c82d7ef5f8854" [label="local://context" shape="ellipse"];
  "sha256:d2feb221cbbc5c3cacef2e5eebf96aa391c3cd47fff93cd396a587773608d14a" [label="copy{src=/Gemfile, dest=/tmp/Gemfile}" shape="note"];
  "sha256:0ce2ce883bd931246f13fa97c4a554111a51b2b11fd2d6dab8efca2bb26287c6" [label="copy{src=/Gemfile.lock, dest=/tmp/Gemfile.lock}" shape="note"];
  "sha256:e825752d51a80c3c3c03e4b6437dde4e55812c0d8adc1d9eff30489d1d5d66aa" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:d422463a905ee42b4e2435b678e049832ea98482661faf4b404da631a05b6b82" [label="/bin/sh -c mkdir /home/app" shape="box"];
  "sha256:e0431c78699762fc07d5373de9d0d4e9b9980c0ad78478d783e6da67b651fd75" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:ad17a2bebc8080883cf3a377fa2e636589076b69b7f7a1be26baea68ef40d4bb" [label="copy{src=/, dest=/home/app}" shape="note"];
  "sha256:9829c241caf94b569640145f63095dc1c2c3310687779fe2e42104a3b01fdd7a" [label="sha256:9829c241caf94b569640145f63095dc1c2c3310687779fe2e42104a3b01fdd7a" shape="plaintext"];
  "sha256:129479e881e6fe15f9b85d1e7071ed232638d909f299e1e68b38a9571c34be53" -> "sha256:cf120f1ed6d5212058163e790186dae4eabb99bf11e0c81fa231d9b769420973" [label=""];
  "sha256:cf120f1ed6d5212058163e790186dae4eabb99bf11e0c81fa231d9b769420973" -> "sha256:a5efc67b10e31b62b0282b05fd897b37db4dd0193f847df2c6e65e93fb963f00" [label=""];
  "sha256:a5efc67b10e31b62b0282b05fd897b37db4dd0193f847df2c6e65e93fb963f00" -> "sha256:e869cde5745b36318639a8016182724fe56c3238f9b61aa0f1033f52fef012ff" [label=""];
  "sha256:e869cde5745b36318639a8016182724fe56c3238f9b61aa0f1033f52fef012ff" -> "sha256:d2feb221cbbc5c3cacef2e5eebf96aa391c3cd47fff93cd396a587773608d14a" [label=""];
  "sha256:f43df3eaefc51a614bb04dc6aec81ed5689aabb0090e8d40556c82d7ef5f8854" -> "sha256:d2feb221cbbc5c3cacef2e5eebf96aa391c3cd47fff93cd396a587773608d14a" [label=""];
  "sha256:d2feb221cbbc5c3cacef2e5eebf96aa391c3cd47fff93cd396a587773608d14a" -> "sha256:0ce2ce883bd931246f13fa97c4a554111a51b2b11fd2d6dab8efca2bb26287c6" [label=""];
  "sha256:f43df3eaefc51a614bb04dc6aec81ed5689aabb0090e8d40556c82d7ef5f8854" -> "sha256:0ce2ce883bd931246f13fa97c4a554111a51b2b11fd2d6dab8efca2bb26287c6" [label=""];
  "sha256:0ce2ce883bd931246f13fa97c4a554111a51b2b11fd2d6dab8efca2bb26287c6" -> "sha256:e825752d51a80c3c3c03e4b6437dde4e55812c0d8adc1d9eff30489d1d5d66aa" [label=""];
  "sha256:e825752d51a80c3c3c03e4b6437dde4e55812c0d8adc1d9eff30489d1d5d66aa" -> "sha256:d422463a905ee42b4e2435b678e049832ea98482661faf4b404da631a05b6b82" [label=""];
  "sha256:d422463a905ee42b4e2435b678e049832ea98482661faf4b404da631a05b6b82" -> "sha256:e0431c78699762fc07d5373de9d0d4e9b9980c0ad78478d783e6da67b651fd75" [label=""];
  "sha256:e0431c78699762fc07d5373de9d0d4e9b9980c0ad78478d783e6da67b651fd75" -> "sha256:ad17a2bebc8080883cf3a377fa2e636589076b69b7f7a1be26baea68ef40d4bb" [label=""];
  "sha256:f43df3eaefc51a614bb04dc6aec81ed5689aabb0090e8d40556c82d7ef5f8854" -> "sha256:ad17a2bebc8080883cf3a377fa2e636589076b69b7f7a1be26baea68ef40d4bb" [label=""];
  "sha256:ad17a2bebc8080883cf3a377fa2e636589076b69b7f7a1be26baea68ef40d4bb" -> "sha256:9829c241caf94b569640145f63095dc1c2c3310687779fe2e42104a3b01fdd7a" [label=""];
}

