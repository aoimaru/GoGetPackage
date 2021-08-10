[app/sources/136277213.Dockerfile]
digraph {
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" [label="local://context" shape="ellipse"];
  "sha256:85dfacc4e627c3ce244dd43c3d07bd754d9fc58ba97ef671386016b06e13f45b" [label="docker-image://docker.io/ulsmith/rpi-raspbian-apache-php:latest" shape="ellipse"];
  "sha256:83233c84edbb3d44188f89bb77de2cce425921bcdad5b7a74d78a0fc5ae20da3" [label="copy{src=/extension, dest=/var/www/html/extension}" shape="note"];
  "sha256:1caf4eb29f7b0ffc8be9846b052ffe071023c16c79aa0c527df5fefa649fdba8" [label="copy{src=/library, dest=/var/www/html/library}" shape="note"];
  "sha256:0c7ef1a0a74da6f487ac644cf1f6a0f47c9ffcc6d2f34e1ca1322be8df043584" [label="copy{src=/rars, dest=/var/www/html/rars}" shape="note"];
  "sha256:51cfe532d82fd8f1da47ec7ba84f8e417b5e0649f7212df8a4f0068afba95c09" [label="copy{src=/theme, dest=/var/www/html/theme}" shape="note"];
  "sha256:6c3fe8b1883b9eb2d5965db8375e45a39cb6b0cb38a20222cbfdd65c68f3bbc1" [label="copy{src=/build, dest=/var/www/html/build}" shape="note"];
  "sha256:03e622693e03d03439968d0de316be2ddea038a7f702e14c474d16dea816a861" [label="copy{src=/.htaccess, dest=/var/www/html/.htaccess}" shape="note"];
  "sha256:8914be48b2381ad830ba1f095ad06f4a1b7a378419fce04c7bc05e36d4cce07c" [label="copy{src=/index.php, dest=/var/www/html/index.php}" shape="note"];
  "sha256:618b13294c40a0aad1a6f83377ef2f13b69ca7aa7f6ab7187d567bfc89cd9c2f" [label="/bin/sh -c rm /var/www/html/index.html && chown -R www-data:www-data /var/www/html" shape="box"];
  "sha256:f5050aa4ea77dd34a74de3078438fa130d9499992c72b99af4b32a7aaf70de12" [label="sha256:f5050aa4ea77dd34a74de3078438fa130d9499992c72b99af4b32a7aaf70de12" shape="plaintext"];
  "sha256:85dfacc4e627c3ce244dd43c3d07bd754d9fc58ba97ef671386016b06e13f45b" -> "sha256:83233c84edbb3d44188f89bb77de2cce425921bcdad5b7a74d78a0fc5ae20da3" [label=""];
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" -> "sha256:83233c84edbb3d44188f89bb77de2cce425921bcdad5b7a74d78a0fc5ae20da3" [label=""];
  "sha256:83233c84edbb3d44188f89bb77de2cce425921bcdad5b7a74d78a0fc5ae20da3" -> "sha256:1caf4eb29f7b0ffc8be9846b052ffe071023c16c79aa0c527df5fefa649fdba8" [label=""];
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" -> "sha256:1caf4eb29f7b0ffc8be9846b052ffe071023c16c79aa0c527df5fefa649fdba8" [label=""];
  "sha256:1caf4eb29f7b0ffc8be9846b052ffe071023c16c79aa0c527df5fefa649fdba8" -> "sha256:0c7ef1a0a74da6f487ac644cf1f6a0f47c9ffcc6d2f34e1ca1322be8df043584" [label=""];
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" -> "sha256:0c7ef1a0a74da6f487ac644cf1f6a0f47c9ffcc6d2f34e1ca1322be8df043584" [label=""];
  "sha256:0c7ef1a0a74da6f487ac644cf1f6a0f47c9ffcc6d2f34e1ca1322be8df043584" -> "sha256:51cfe532d82fd8f1da47ec7ba84f8e417b5e0649f7212df8a4f0068afba95c09" [label=""];
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" -> "sha256:51cfe532d82fd8f1da47ec7ba84f8e417b5e0649f7212df8a4f0068afba95c09" [label=""];
  "sha256:51cfe532d82fd8f1da47ec7ba84f8e417b5e0649f7212df8a4f0068afba95c09" -> "sha256:6c3fe8b1883b9eb2d5965db8375e45a39cb6b0cb38a20222cbfdd65c68f3bbc1" [label=""];
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" -> "sha256:6c3fe8b1883b9eb2d5965db8375e45a39cb6b0cb38a20222cbfdd65c68f3bbc1" [label=""];
  "sha256:6c3fe8b1883b9eb2d5965db8375e45a39cb6b0cb38a20222cbfdd65c68f3bbc1" -> "sha256:03e622693e03d03439968d0de316be2ddea038a7f702e14c474d16dea816a861" [label=""];
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" -> "sha256:03e622693e03d03439968d0de316be2ddea038a7f702e14c474d16dea816a861" [label=""];
  "sha256:03e622693e03d03439968d0de316be2ddea038a7f702e14c474d16dea816a861" -> "sha256:8914be48b2381ad830ba1f095ad06f4a1b7a378419fce04c7bc05e36d4cce07c" [label=""];
  "sha256:8f5f126078fce7daaa6142ea016f59f88083e814c409d8eb27c9df7dbd3f97a3" -> "sha256:8914be48b2381ad830ba1f095ad06f4a1b7a378419fce04c7bc05e36d4cce07c" [label=""];
  "sha256:8914be48b2381ad830ba1f095ad06f4a1b7a378419fce04c7bc05e36d4cce07c" -> "sha256:618b13294c40a0aad1a6f83377ef2f13b69ca7aa7f6ab7187d567bfc89cd9c2f" [label=""];
  "sha256:618b13294c40a0aad1a6f83377ef2f13b69ca7aa7f6ab7187d567bfc89cd9c2f" -> "sha256:f5050aa4ea77dd34a74de3078438fa130d9499992c72b99af4b32a7aaf70de12" [label=""];
}

