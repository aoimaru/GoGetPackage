[app/sources/338016000.Dockerfile]
digraph {
  "sha256:1fbb1603476db445d8967c4327ba6759799be3f98c4bce84bce7ea4a965a69a5" [label="docker-image://docker.io/vjrantal/iot-edge-darknet-base:latest" shape="ellipse"];
  "sha256:b3ad6aa56df53e853462503865f92b18d851f7a86421c92d1392c0d790ab89d1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5b342319e1e98027dd5adba60ba0223309efe7c2558d4900671f9bda13c59705" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:dfb69667b459eb1f901287d701155d12dfad97d5030a23a8dd5cc7dad0202277" [label="/bin/sh -c git clone https://github.com/pjreddie/darknet.git" shape="box"];
  "sha256:79d7ff6162614890552f9a464b8e19525778835f08a9f67c47b0e66f2d4dc935" [label="mkdir{path=/darknet}" shape="note"];
  "sha256:092bd6c2730b2f8c9348346be1db58232c0f2a06103ea66264f8761d69ce053f" [label="/bin/sh -c git checkout 80d9bec20f0a44ab07616215c6eadb2d633492fe" shape="box"];
  "sha256:c3cf0a97a5b2f72c5a1ee588cad20ad54f6c6d31bf78de3245d5ca93c48427b8" [label="/bin/sh -c apt-get install -y libopencv-dev pkg-config wget" shape="box"];
  "sha256:253b71363cd88a387a3111a03b2e1a8d03027212b8fe87562ad6896161b82d66" [label="/bin/sh -c sed -i 's/OPENCV=0/OPENCV=1/g' Makefile" shape="box"];
  "sha256:637cf1f1757ce69e4ac865cfca69f7b407f826c03bc406f333321657a54b745f" [label="/bin/sh -c if [ \"x$gpu\" = \"x1\" ] ; then sed -i 's/GPU=0/GPU=1/g' Makefile ; fi" shape="box"];
  "sha256:5d855379003bf2ec76b81802a04361580a0594be6a6f6fae6b94326d116b058d" [label="/bin/sh -c make" shape="box"];
  "sha256:13b1ecf9a8ad4dc4ea965b27014d1d0f002dbe567483a975c38595192c423ee5" [label="/bin/sh -c wget https://pjreddie.com/media/files/yolo.weights" shape="box"];
  "sha256:65a6b85326a1b46c41cc863d36a413e5699c8e24fd9271112252067103fc31e2" [label="sha256:65a6b85326a1b46c41cc863d36a413e5699c8e24fd9271112252067103fc31e2" shape="plaintext"];
  "sha256:1fbb1603476db445d8967c4327ba6759799be3f98c4bce84bce7ea4a965a69a5" -> "sha256:b3ad6aa56df53e853462503865f92b18d851f7a86421c92d1392c0d790ab89d1" [label=""];
  "sha256:b3ad6aa56df53e853462503865f92b18d851f7a86421c92d1392c0d790ab89d1" -> "sha256:5b342319e1e98027dd5adba60ba0223309efe7c2558d4900671f9bda13c59705" [label=""];
  "sha256:5b342319e1e98027dd5adba60ba0223309efe7c2558d4900671f9bda13c59705" -> "sha256:dfb69667b459eb1f901287d701155d12dfad97d5030a23a8dd5cc7dad0202277" [label=""];
  "sha256:dfb69667b459eb1f901287d701155d12dfad97d5030a23a8dd5cc7dad0202277" -> "sha256:79d7ff6162614890552f9a464b8e19525778835f08a9f67c47b0e66f2d4dc935" [label=""];
  "sha256:79d7ff6162614890552f9a464b8e19525778835f08a9f67c47b0e66f2d4dc935" -> "sha256:092bd6c2730b2f8c9348346be1db58232c0f2a06103ea66264f8761d69ce053f" [label=""];
  "sha256:092bd6c2730b2f8c9348346be1db58232c0f2a06103ea66264f8761d69ce053f" -> "sha256:c3cf0a97a5b2f72c5a1ee588cad20ad54f6c6d31bf78de3245d5ca93c48427b8" [label=""];
  "sha256:c3cf0a97a5b2f72c5a1ee588cad20ad54f6c6d31bf78de3245d5ca93c48427b8" -> "sha256:253b71363cd88a387a3111a03b2e1a8d03027212b8fe87562ad6896161b82d66" [label=""];
  "sha256:253b71363cd88a387a3111a03b2e1a8d03027212b8fe87562ad6896161b82d66" -> "sha256:637cf1f1757ce69e4ac865cfca69f7b407f826c03bc406f333321657a54b745f" [label=""];
  "sha256:637cf1f1757ce69e4ac865cfca69f7b407f826c03bc406f333321657a54b745f" -> "sha256:5d855379003bf2ec76b81802a04361580a0594be6a6f6fae6b94326d116b058d" [label=""];
  "sha256:5d855379003bf2ec76b81802a04361580a0594be6a6f6fae6b94326d116b058d" -> "sha256:13b1ecf9a8ad4dc4ea965b27014d1d0f002dbe567483a975c38595192c423ee5" [label=""];
  "sha256:13b1ecf9a8ad4dc4ea965b27014d1d0f002dbe567483a975c38595192c423ee5" -> "sha256:65a6b85326a1b46c41cc863d36a413e5699c8e24fd9271112252067103fc31e2" [label=""];
}

