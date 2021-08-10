[app/sources/352967033.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f3f100cdc024eee2532b802da1d9d8f10c432a42bdda7e46e43825f1c0978adb" [label="local://context" shape="ellipse"];
  "sha256:a6686c071da8aa84601f1d0d6f5ece7d928efd9fab257e4aec428cfe4a7dce98" [label="copy{src=/aemInstaller.py, dest=/aem/aemInstaller.py}" shape="note"];
  "sha256:7892212a475fdf63f974e72f8fd47487705e78f42eb808a59e3a8f059a68a572" [label="copy{src=/oak-run-1.2.2.jar, dest=/aem/oak-run.jar}" shape="note"];
  "sha256:635761b196f1a4f06f981ec8f8970baae77cb5ad4c8d37542e9fac04b454cff6" [label="copy{src=/compaction.sh, dest=/aem/compaction.sh}" shape="note"];
  "sha256:321406b31863d9eab999ad236cb31e330df09618c7b52d46594693e977fa5261" [label="copy{src=/org.apache.jackrabbit.oak.plugins.segment.SegmentNodeStoreService.cfg, dest=/aem/org.apache.jackrabbit.oak.plugins.segment.SegmentNodeStoreService.cfg}" shape="note"];
  "sha256:67b0d8e60ff48bc6874a6a76bb0e391d666d367d68b799a35d1ec7a7c98f1f7d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:04bf5b3562ef747074deabb0fa29ccba83b119fe94a954940b8a299bb8139fb5" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:719bcf8e73254a96a0630a58f687856f276493bd423f1e44120444fbf158d8e1" [label="/bin/sh -c apt-get -y install ipython ipython3" shape="box"];
  "sha256:ae4d8d8083b3d390d566b5b92ac8e8d3e38dd6033ab6863ef4b3330397b37a0b" [label="/bin/sh -c apt-get -y install python-psutil" shape="box"];
  "sha256:0e55bfdd8af4a3bbe94daedfcea7b4b48b441209167234fdec8328ff8d90dceb" [label="/bin/sh -c apt-get -y install python-pycurl" shape="box"];
  "sha256:e303c1f2e1a5f10a3f55b3b459118bcbad7cdf7a2d761b2edff7e94a2f561d0b" [label="/bin/sh -c apt-add-repository -y ppa:webupd8team/java" shape="box"];
  "sha256:0d71180bb2e40ae1973275f7da704e733e1e88187ead0248e9a41d79a7c76daf" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update -y" shape="box"];
  "sha256:a64fb6b416cbb2866c01dd0f7613121a88457811b2077a75eb4efb479761bd2e" [label="/bin/sh -c echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections" shape="box"];
  "sha256:c0ed6ca66a305edfddea6d75c75fe4ba6a59ded76a1f47b2af9a9778a2ead3a3" [label="/bin/sh -c echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections" shape="box"];
  "sha256:486c6799ceebdfdce35dc959e22db76eeee66756fcff593c1b310d696f16b83b" [label="/bin/sh -c apt-get install -y --force-yes oracle-java8-installer" shape="box"];
  "sha256:24d201215a22c84ae25a2f97ef5fa9283738f4cce72cdda94d96208a2042f7ef" [label="sha256:24d201215a22c84ae25a2f97ef5fa9283738f4cce72cdda94d96208a2042f7ef" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a6686c071da8aa84601f1d0d6f5ece7d928efd9fab257e4aec428cfe4a7dce98" [label=""];
  "sha256:f3f100cdc024eee2532b802da1d9d8f10c432a42bdda7e46e43825f1c0978adb" -> "sha256:a6686c071da8aa84601f1d0d6f5ece7d928efd9fab257e4aec428cfe4a7dce98" [label=""];
  "sha256:a6686c071da8aa84601f1d0d6f5ece7d928efd9fab257e4aec428cfe4a7dce98" -> "sha256:7892212a475fdf63f974e72f8fd47487705e78f42eb808a59e3a8f059a68a572" [label=""];
  "sha256:f3f100cdc024eee2532b802da1d9d8f10c432a42bdda7e46e43825f1c0978adb" -> "sha256:7892212a475fdf63f974e72f8fd47487705e78f42eb808a59e3a8f059a68a572" [label=""];
  "sha256:7892212a475fdf63f974e72f8fd47487705e78f42eb808a59e3a8f059a68a572" -> "sha256:635761b196f1a4f06f981ec8f8970baae77cb5ad4c8d37542e9fac04b454cff6" [label=""];
  "sha256:f3f100cdc024eee2532b802da1d9d8f10c432a42bdda7e46e43825f1c0978adb" -> "sha256:635761b196f1a4f06f981ec8f8970baae77cb5ad4c8d37542e9fac04b454cff6" [label=""];
  "sha256:635761b196f1a4f06f981ec8f8970baae77cb5ad4c8d37542e9fac04b454cff6" -> "sha256:321406b31863d9eab999ad236cb31e330df09618c7b52d46594693e977fa5261" [label=""];
  "sha256:f3f100cdc024eee2532b802da1d9d8f10c432a42bdda7e46e43825f1c0978adb" -> "sha256:321406b31863d9eab999ad236cb31e330df09618c7b52d46594693e977fa5261" [label=""];
  "sha256:321406b31863d9eab999ad236cb31e330df09618c7b52d46594693e977fa5261" -> "sha256:67b0d8e60ff48bc6874a6a76bb0e391d666d367d68b799a35d1ec7a7c98f1f7d" [label=""];
  "sha256:67b0d8e60ff48bc6874a6a76bb0e391d666d367d68b799a35d1ec7a7c98f1f7d" -> "sha256:04bf5b3562ef747074deabb0fa29ccba83b119fe94a954940b8a299bb8139fb5" [label=""];
  "sha256:04bf5b3562ef747074deabb0fa29ccba83b119fe94a954940b8a299bb8139fb5" -> "sha256:719bcf8e73254a96a0630a58f687856f276493bd423f1e44120444fbf158d8e1" [label=""];
  "sha256:719bcf8e73254a96a0630a58f687856f276493bd423f1e44120444fbf158d8e1" -> "sha256:ae4d8d8083b3d390d566b5b92ac8e8d3e38dd6033ab6863ef4b3330397b37a0b" [label=""];
  "sha256:ae4d8d8083b3d390d566b5b92ac8e8d3e38dd6033ab6863ef4b3330397b37a0b" -> "sha256:0e55bfdd8af4a3bbe94daedfcea7b4b48b441209167234fdec8328ff8d90dceb" [label=""];
  "sha256:0e55bfdd8af4a3bbe94daedfcea7b4b48b441209167234fdec8328ff8d90dceb" -> "sha256:e303c1f2e1a5f10a3f55b3b459118bcbad7cdf7a2d761b2edff7e94a2f561d0b" [label=""];
  "sha256:e303c1f2e1a5f10a3f55b3b459118bcbad7cdf7a2d761b2edff7e94a2f561d0b" -> "sha256:0d71180bb2e40ae1973275f7da704e733e1e88187ead0248e9a41d79a7c76daf" [label=""];
  "sha256:0d71180bb2e40ae1973275f7da704e733e1e88187ead0248e9a41d79a7c76daf" -> "sha256:a64fb6b416cbb2866c01dd0f7613121a88457811b2077a75eb4efb479761bd2e" [label=""];
  "sha256:a64fb6b416cbb2866c01dd0f7613121a88457811b2077a75eb4efb479761bd2e" -> "sha256:c0ed6ca66a305edfddea6d75c75fe4ba6a59ded76a1f47b2af9a9778a2ead3a3" [label=""];
  "sha256:c0ed6ca66a305edfddea6d75c75fe4ba6a59ded76a1f47b2af9a9778a2ead3a3" -> "sha256:486c6799ceebdfdce35dc959e22db76eeee66756fcff593c1b310d696f16b83b" [label=""];
  "sha256:486c6799ceebdfdce35dc959e22db76eeee66756fcff593c1b310d696f16b83b" -> "sha256:24d201215a22c84ae25a2f97ef5fa9283738f4cce72cdda94d96208a2042f7ef" [label=""];
}

