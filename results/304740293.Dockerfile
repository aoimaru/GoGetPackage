[app/sources/304740293.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:a548d1004408d243f1ce77c1febb18c3fdc3fb43998f96217e4cbf32acd823b4" [label="/bin/sh -c TZ=Asia/Shanghai" shape="box"];
  "sha256:6b9ab9d84906e08d7d8198aabe550d8c627f16ea36cd9353e71d83541c8eaf7c" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:49a56621e817e88b1602a625eaddd593b11f8b693b237239446b9e20097c3ae7" [label="/bin/sh -c echo \"export LC_ALL=zh_CN.UTF-8\" >> /etc/profile" shape="box"];
  "sha256:dbe9f4cd0f1004e34d9a4626e47f5265083e26c9ea91df20882214b3de368f3d" [label="local://context" shape="ellipse"];
  "sha256:ee3707050bf5dcc6d7f5b31a03a41529dff8b263d2644545a581e9566f50a872" [label="copy{src=/target/service-consumer-ribbon.jar, dest=/app/}" shape="note"];
  "sha256:c3cb20c200a03c04bd5ed94059ccf82fcf01b68f677ca7622b7ed2dc7cf3b3f1" [label="sha256:c3cb20c200a03c04bd5ed94059ccf82fcf01b68f677ca7622b7ed2dc7cf3b3f1" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:a548d1004408d243f1ce77c1febb18c3fdc3fb43998f96217e4cbf32acd823b4" [label=""];
  "sha256:a548d1004408d243f1ce77c1febb18c3fdc3fb43998f96217e4cbf32acd823b4" -> "sha256:6b9ab9d84906e08d7d8198aabe550d8c627f16ea36cd9353e71d83541c8eaf7c" [label=""];
  "sha256:6b9ab9d84906e08d7d8198aabe550d8c627f16ea36cd9353e71d83541c8eaf7c" -> "sha256:49a56621e817e88b1602a625eaddd593b11f8b693b237239446b9e20097c3ae7" [label=""];
  "sha256:49a56621e817e88b1602a625eaddd593b11f8b693b237239446b9e20097c3ae7" -> "sha256:ee3707050bf5dcc6d7f5b31a03a41529dff8b263d2644545a581e9566f50a872" [label=""];
  "sha256:dbe9f4cd0f1004e34d9a4626e47f5265083e26c9ea91df20882214b3de368f3d" -> "sha256:ee3707050bf5dcc6d7f5b31a03a41529dff8b263d2644545a581e9566f50a872" [label=""];
  "sha256:ee3707050bf5dcc6d7f5b31a03a41529dff8b263d2644545a581e9566f50a872" -> "sha256:c3cb20c200a03c04bd5ed94059ccf82fcf01b68f677ca7622b7ed2dc7cf3b3f1" [label=""];
}

