[app/sources/477608230.Dockerfile]
digraph {
  "sha256:2989aef05e3e3af94edeff6de5dd223790bebe8d55c9502ecf6f925c07db3e67" [label="local://context" shape="ellipse"];
  "sha256:04d140500fd47fcc99a14e6f61313fb600d1f40bf9c93dd0380221baa6017b45" [label="docker-image://docker.io/phusion/baseimage:0.9.21" shape="ellipse"];
  "sha256:5942d9bf74c1864065a7c0cce3921fa8990aea805ae43744a8d6dde9b01ab115" [label="/bin/sh -c apt-get update && apt-get install -y unzip tar openjdk-8-jdk wget git" shape="box"];
  "sha256:8349397757df02c4d3beefa137d0eff6b097797cd7b9c5d176ec6cfda4bcdc5d" [label="mkdir{path=/opt/gradle}" shape="note"];
  "sha256:6dce0bac5d9ae6172d03855132490917ce40254949b7e2598ffef9ab645887a7" [label="/bin/sh -c wget https://services.gradle.org/distributions/gradle-4.0-bin.zip     && unzip gradle-4.0-bin.zip     && rm -rf gradle-4.0-bin.zip" shape="box"];
  "sha256:01a95d6886fc9f32ea701ad6c58e4d1eb2ad9c35ae12d4737435bceee71aa127" [label="/bin/sh -c wget https://services.gradle.org/distributions/gradle-3.5-bin.zip     && unzip gradle-3.5-bin.zip     && rm -rf gradle-3.5-bin.zip" shape="box"];
  "sha256:adef065da5d6c57b5122f4900a02c7d508289378b430abc0dc8e5fd2e7faa997" [label="mkdir{path=/root/convert}" shape="note"];
  "sha256:6752ac660075a7fedf15d9ffc61bf6e23c9247a929ceb532451fa0950b69ac42" [label="copy{src=/Convert.java, dest=/root/convert/Convert.java}" shape="note"];
  "sha256:ef4cb5df54675b2e1f42bf3c58fb969823c15292a678d0cf6aad43fbbf4a37e1" [label="copy{src=/build.gradle, dest=/root/convert/build.gradle}" shape="note"];
  "sha256:21660f5074d2f4c561851a1fcf51bbaf09ba13cf62d78599faa6640391bb2ef8" [label="/bin/sh -c $gradle3/gradle build &&     cp build/libs/convert.jar /root/convert.jar &&     rm -rf /root/convert" shape="box"];
  "sha256:6ae1841bdf171e71b38a7d6da8a2273e238aa35024bf8ab2db8fcbf45e793046" [label="mkdir{path=/root}" shape="note"];
  "sha256:d51da6b224242d751fbac2027e5e78836f2c24a2ae9b6f8cff5bb1f5f552e196" [label="copy{src=/compile.sh, dest=/root/compile.sh}" shape="note"];
  "sha256:f2fd8d88c16d480a0e7bba280c4da892d5e43c10c70440b60a9b084b0ef46e22" [label="/bin/sh -c chmod 777 /root/compile.sh" shape="box"];
  "sha256:186b2b8624a7a1d5822ae315202abb52c7510724cc76e26be3eca87a0c59532e" [label="sha256:186b2b8624a7a1d5822ae315202abb52c7510724cc76e26be3eca87a0c59532e" shape="plaintext"];
  "sha256:04d140500fd47fcc99a14e6f61313fb600d1f40bf9c93dd0380221baa6017b45" -> "sha256:5942d9bf74c1864065a7c0cce3921fa8990aea805ae43744a8d6dde9b01ab115" [label=""];
  "sha256:5942d9bf74c1864065a7c0cce3921fa8990aea805ae43744a8d6dde9b01ab115" -> "sha256:8349397757df02c4d3beefa137d0eff6b097797cd7b9c5d176ec6cfda4bcdc5d" [label=""];
  "sha256:8349397757df02c4d3beefa137d0eff6b097797cd7b9c5d176ec6cfda4bcdc5d" -> "sha256:6dce0bac5d9ae6172d03855132490917ce40254949b7e2598ffef9ab645887a7" [label=""];
  "sha256:6dce0bac5d9ae6172d03855132490917ce40254949b7e2598ffef9ab645887a7" -> "sha256:01a95d6886fc9f32ea701ad6c58e4d1eb2ad9c35ae12d4737435bceee71aa127" [label=""];
  "sha256:01a95d6886fc9f32ea701ad6c58e4d1eb2ad9c35ae12d4737435bceee71aa127" -> "sha256:adef065da5d6c57b5122f4900a02c7d508289378b430abc0dc8e5fd2e7faa997" [label=""];
  "sha256:adef065da5d6c57b5122f4900a02c7d508289378b430abc0dc8e5fd2e7faa997" -> "sha256:6752ac660075a7fedf15d9ffc61bf6e23c9247a929ceb532451fa0950b69ac42" [label=""];
  "sha256:2989aef05e3e3af94edeff6de5dd223790bebe8d55c9502ecf6f925c07db3e67" -> "sha256:6752ac660075a7fedf15d9ffc61bf6e23c9247a929ceb532451fa0950b69ac42" [label=""];
  "sha256:6752ac660075a7fedf15d9ffc61bf6e23c9247a929ceb532451fa0950b69ac42" -> "sha256:ef4cb5df54675b2e1f42bf3c58fb969823c15292a678d0cf6aad43fbbf4a37e1" [label=""];
  "sha256:2989aef05e3e3af94edeff6de5dd223790bebe8d55c9502ecf6f925c07db3e67" -> "sha256:ef4cb5df54675b2e1f42bf3c58fb969823c15292a678d0cf6aad43fbbf4a37e1" [label=""];
  "sha256:ef4cb5df54675b2e1f42bf3c58fb969823c15292a678d0cf6aad43fbbf4a37e1" -> "sha256:21660f5074d2f4c561851a1fcf51bbaf09ba13cf62d78599faa6640391bb2ef8" [label=""];
  "sha256:21660f5074d2f4c561851a1fcf51bbaf09ba13cf62d78599faa6640391bb2ef8" -> "sha256:6ae1841bdf171e71b38a7d6da8a2273e238aa35024bf8ab2db8fcbf45e793046" [label=""];
  "sha256:6ae1841bdf171e71b38a7d6da8a2273e238aa35024bf8ab2db8fcbf45e793046" -> "sha256:d51da6b224242d751fbac2027e5e78836f2c24a2ae9b6f8cff5bb1f5f552e196" [label=""];
  "sha256:2989aef05e3e3af94edeff6de5dd223790bebe8d55c9502ecf6f925c07db3e67" -> "sha256:d51da6b224242d751fbac2027e5e78836f2c24a2ae9b6f8cff5bb1f5f552e196" [label=""];
  "sha256:d51da6b224242d751fbac2027e5e78836f2c24a2ae9b6f8cff5bb1f5f552e196" -> "sha256:f2fd8d88c16d480a0e7bba280c4da892d5e43c10c70440b60a9b084b0ef46e22" [label=""];
  "sha256:f2fd8d88c16d480a0e7bba280c4da892d5e43c10c70440b60a9b084b0ef46e22" -> "sha256:186b2b8624a7a1d5822ae315202abb52c7510724cc76e26be3eca87a0c59532e" [label=""];
}

