[app/sources/202147339.Dockerfile]
digraph {
  "sha256:609bc9d10c3796aa9adfd611eb791c2cad26a8735fd8333c51f1b311b582e9b2" [label="local://context" shape="ellipse"];
  "sha256:2aa0f2c50df05dcb75be17dd6a0c58e124e894387ad8e6831f74b8f275b60c53" [label="docker-image://docker.io/library/ruby:2.3-slim" shape="ellipse"];
  "sha256:ab5c52d7112725becfaf88ef1f1f8b4645337a8d1673c815493bee5a2ce37f34" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:10457d2cb6d809af649272c9053f89a2733e2876f3f32528441a6ab4b6b9f2c5" [label="mkdir{path=/opt/uphold}" shape="note"];
  "sha256:530c69ee5244ac8381f4112fb7b449cf401660b670477f083e54d93eecf84f56" [label="copy{src=/Gemfile, dest=/opt/uphold/Gemfile}" shape="note"];
  "sha256:208b46f614312252747567697d32c6f5c25f7ca6b4f543f5a81eda2ce77980d2" [label="copy{src=/Gemfile.lock, dest=/opt/uphold/Gemfile.lock}" shape="note"];
  "sha256:dd189d506a399204f4e24d06a5522cb896bd0d107696d5a7d363ce02804f9da9" [label="/bin/sh -c apt-get install -y build-essential &&   bundle install --without tester development &&   apt-get remove -y build-essential &&   apt-get autoremove -y && apt-get clean &&   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:724c39d029e28d9291235d6f09a0eac18b7129384b3b9ef432674f489a214587" [label="copy{src=/lib, dest=/opt/uphold/lib}" shape="note"];
  "sha256:b0e73488f50a429b359add5bf146535fa1c3e7cafbff1e29395bb8f7d0162734" [label="copy{src=/public, dest=/opt/uphold/public}" shape="note"];
  "sha256:23518ae318e15b808e469dbb5ce47b1b4641d127f9c9f74e514878bf4113333f" [label="copy{src=/views, dest=/opt/uphold/views}" shape="note"];
  "sha256:6ef2b719166e7a492c0d589a2c9fa57b75e0a7935a477f175a74c6115800bafd" [label="copy{src=/config.ru, dest=/opt/uphold/},copy{src=/environment.rb, dest=/opt/uphold/},copy{src=/ui.rb, dest=/opt/uphold/}" shape="note"];
  "sha256:ceb6fe66659a8815ff6b6ae8f6fc867dd3de912f427653f26d1e63b313caea1e" [label="sha256:ceb6fe66659a8815ff6b6ae8f6fc867dd3de912f427653f26d1e63b313caea1e" shape="plaintext"];
  "sha256:2aa0f2c50df05dcb75be17dd6a0c58e124e894387ad8e6831f74b8f275b60c53" -> "sha256:ab5c52d7112725becfaf88ef1f1f8b4645337a8d1673c815493bee5a2ce37f34" [label=""];
  "sha256:ab5c52d7112725becfaf88ef1f1f8b4645337a8d1673c815493bee5a2ce37f34" -> "sha256:10457d2cb6d809af649272c9053f89a2733e2876f3f32528441a6ab4b6b9f2c5" [label=""];
  "sha256:10457d2cb6d809af649272c9053f89a2733e2876f3f32528441a6ab4b6b9f2c5" -> "sha256:530c69ee5244ac8381f4112fb7b449cf401660b670477f083e54d93eecf84f56" [label=""];
  "sha256:609bc9d10c3796aa9adfd611eb791c2cad26a8735fd8333c51f1b311b582e9b2" -> "sha256:530c69ee5244ac8381f4112fb7b449cf401660b670477f083e54d93eecf84f56" [label=""];
  "sha256:530c69ee5244ac8381f4112fb7b449cf401660b670477f083e54d93eecf84f56" -> "sha256:208b46f614312252747567697d32c6f5c25f7ca6b4f543f5a81eda2ce77980d2" [label=""];
  "sha256:609bc9d10c3796aa9adfd611eb791c2cad26a8735fd8333c51f1b311b582e9b2" -> "sha256:208b46f614312252747567697d32c6f5c25f7ca6b4f543f5a81eda2ce77980d2" [label=""];
  "sha256:208b46f614312252747567697d32c6f5c25f7ca6b4f543f5a81eda2ce77980d2" -> "sha256:dd189d506a399204f4e24d06a5522cb896bd0d107696d5a7d363ce02804f9da9" [label=""];
  "sha256:dd189d506a399204f4e24d06a5522cb896bd0d107696d5a7d363ce02804f9da9" -> "sha256:724c39d029e28d9291235d6f09a0eac18b7129384b3b9ef432674f489a214587" [label=""];
  "sha256:609bc9d10c3796aa9adfd611eb791c2cad26a8735fd8333c51f1b311b582e9b2" -> "sha256:724c39d029e28d9291235d6f09a0eac18b7129384b3b9ef432674f489a214587" [label=""];
  "sha256:724c39d029e28d9291235d6f09a0eac18b7129384b3b9ef432674f489a214587" -> "sha256:b0e73488f50a429b359add5bf146535fa1c3e7cafbff1e29395bb8f7d0162734" [label=""];
  "sha256:609bc9d10c3796aa9adfd611eb791c2cad26a8735fd8333c51f1b311b582e9b2" -> "sha256:b0e73488f50a429b359add5bf146535fa1c3e7cafbff1e29395bb8f7d0162734" [label=""];
  "sha256:b0e73488f50a429b359add5bf146535fa1c3e7cafbff1e29395bb8f7d0162734" -> "sha256:23518ae318e15b808e469dbb5ce47b1b4641d127f9c9f74e514878bf4113333f" [label=""];
  "sha256:609bc9d10c3796aa9adfd611eb791c2cad26a8735fd8333c51f1b311b582e9b2" -> "sha256:23518ae318e15b808e469dbb5ce47b1b4641d127f9c9f74e514878bf4113333f" [label=""];
  "sha256:23518ae318e15b808e469dbb5ce47b1b4641d127f9c9f74e514878bf4113333f" -> "sha256:6ef2b719166e7a492c0d589a2c9fa57b75e0a7935a477f175a74c6115800bafd" [label=""];
  "sha256:609bc9d10c3796aa9adfd611eb791c2cad26a8735fd8333c51f1b311b582e9b2" -> "sha256:6ef2b719166e7a492c0d589a2c9fa57b75e0a7935a477f175a74c6115800bafd" [label=""];
  "sha256:6ef2b719166e7a492c0d589a2c9fa57b75e0a7935a477f175a74c6115800bafd" -> "sha256:ceb6fe66659a8815ff6b6ae8f6fc867dd3de912f427653f26d1e63b313caea1e" [label=""];
}

