[app/sources/444633398.Dockerfile]
digraph {
  "sha256:7e70292c83f822d03da8a07330de36427b5878c94a83c5bbaf9d8ad5d5e83c30" [label="docker-image://docker.io/paulczar/apache2-php:latest" shape="ellipse"];
  "sha256:2dead9172e3b1251785e80e084b5c4737c8ce3ffb29d21c678be14f3f2f9a552" [label="/bin/sh -c apt-get -y install php5-mysql" shape="box"];
  "sha256:ec269e97eadf436b92d1b3ef453b62e0a8bc1f4bc72d1c268f94d2258fe0c501" [label="local://context" shape="ellipse"];
  "sha256:de600d53f2c3e3170690be116cf4fad398620fc2a5016c296b622e00ba9fdece" [label="copy{src=/wordpress, dest=/var/www}" shape="note"];
  "sha256:03f29f02054c7e9a2125c0761dcb16696b51bd7f7e5682e5e00b4e85e857263e" [label="copy{src=/start, dest=/wordpress/start}" shape="note"];
  "sha256:dd74f0240a996aec193ece40ab0f949ebac978fc71510aabe8af91914df594cd" [label="/bin/sh -c chmod 700 /wordpress/start" shape="box"];
  "sha256:9605aa8c527be69958c4158af807bfcacec8b6b7f1c8a8d07e066f1ffd14a749" [label="copy{src=/wordpress.sql, dest=/wordpress/wordpress.sql}" shape="note"];
  "sha256:58caa65b9f8eff1fe5be867aa8f9d598f4843031026fb539f572104490d301f0" [label="sha256:58caa65b9f8eff1fe5be867aa8f9d598f4843031026fb539f572104490d301f0" shape="plaintext"];
  "sha256:7e70292c83f822d03da8a07330de36427b5878c94a83c5bbaf9d8ad5d5e83c30" -> "sha256:2dead9172e3b1251785e80e084b5c4737c8ce3ffb29d21c678be14f3f2f9a552" [label=""];
  "sha256:2dead9172e3b1251785e80e084b5c4737c8ce3ffb29d21c678be14f3f2f9a552" -> "sha256:de600d53f2c3e3170690be116cf4fad398620fc2a5016c296b622e00ba9fdece" [label=""];
  "sha256:ec269e97eadf436b92d1b3ef453b62e0a8bc1f4bc72d1c268f94d2258fe0c501" -> "sha256:de600d53f2c3e3170690be116cf4fad398620fc2a5016c296b622e00ba9fdece" [label=""];
  "sha256:de600d53f2c3e3170690be116cf4fad398620fc2a5016c296b622e00ba9fdece" -> "sha256:03f29f02054c7e9a2125c0761dcb16696b51bd7f7e5682e5e00b4e85e857263e" [label=""];
  "sha256:ec269e97eadf436b92d1b3ef453b62e0a8bc1f4bc72d1c268f94d2258fe0c501" -> "sha256:03f29f02054c7e9a2125c0761dcb16696b51bd7f7e5682e5e00b4e85e857263e" [label=""];
  "sha256:03f29f02054c7e9a2125c0761dcb16696b51bd7f7e5682e5e00b4e85e857263e" -> "sha256:dd74f0240a996aec193ece40ab0f949ebac978fc71510aabe8af91914df594cd" [label=""];
  "sha256:dd74f0240a996aec193ece40ab0f949ebac978fc71510aabe8af91914df594cd" -> "sha256:9605aa8c527be69958c4158af807bfcacec8b6b7f1c8a8d07e066f1ffd14a749" [label=""];
  "sha256:ec269e97eadf436b92d1b3ef453b62e0a8bc1f4bc72d1c268f94d2258fe0c501" -> "sha256:9605aa8c527be69958c4158af807bfcacec8b6b7f1c8a8d07e066f1ffd14a749" [label=""];
  "sha256:9605aa8c527be69958c4158af807bfcacec8b6b7f1c8a8d07e066f1ffd14a749" -> "sha256:58caa65b9f8eff1fe5be867aa8f9d598f4843031026fb539f572104490d301f0" [label=""];
}

