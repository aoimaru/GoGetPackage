[app/sources/282471521.Dockerfile]
digraph {
  "sha256:a313682f421f9c4ce8b88945a6e27d1bbf79d641619377abff1eccde6b3e46f3" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:e8a3a99aa5f48d0f7e5f0bedc04adb8b622978d45363c45cc31192ccdd499728" [label="mkdir{path=/usr/app}" shape="note"];
  "sha256:2e77fc69d95aa2d0d31ff62d065400eca97705147bb9c1eb50ea60d08563eb03" [label="copy{src=/package.json, dest=/usr/app/}" shape="note"];
  "sha256:87454be988392d7bdcbf4c0507efda5aa70a4a535c24a0ad0f9985a2220dda33" [label="copy{src=/package-lock.json, dest=/usr/app/}" shape="note"];
  "sha256:3d047ea1a47aca04ac4db3b1f4f2512b7a9c4a17583da4489facd1d63c592e52" [label="copy{src=/tsconfig.json, dest=/usr/app/}" shape="note"];
  "sha256:16d6ef3868651c6717681f0ddcbe76af0b76ec1b5e99c9d88164d471ab9cc3e9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3dc735e3827310119a3c5c47339f24d72d188700d7a6c695ae55ff80aa55dfd8" [label="copy{src=/src, dest=/usr/app/}" shape="note"];
  "sha256:62d63ea8583f42c2d81396e65fd56f325b062c835c8a7bfb81e3f101f41104be" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:1d11b173d598ccfcb48e16a62b9db31ab742672c2331650ce17d4a4aa95d0d2f" [label="sha256:1d11b173d598ccfcb48e16a62b9db31ab742672c2331650ce17d4a4aa95d0d2f" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:e8a3a99aa5f48d0f7e5f0bedc04adb8b622978d45363c45cc31192ccdd499728" [label=""];
  "sha256:e8a3a99aa5f48d0f7e5f0bedc04adb8b622978d45363c45cc31192ccdd499728" -> "sha256:2e77fc69d95aa2d0d31ff62d065400eca97705147bb9c1eb50ea60d08563eb03" [label=""];
  "sha256:a313682f421f9c4ce8b88945a6e27d1bbf79d641619377abff1eccde6b3e46f3" -> "sha256:2e77fc69d95aa2d0d31ff62d065400eca97705147bb9c1eb50ea60d08563eb03" [label=""];
  "sha256:2e77fc69d95aa2d0d31ff62d065400eca97705147bb9c1eb50ea60d08563eb03" -> "sha256:87454be988392d7bdcbf4c0507efda5aa70a4a535c24a0ad0f9985a2220dda33" [label=""];
  "sha256:a313682f421f9c4ce8b88945a6e27d1bbf79d641619377abff1eccde6b3e46f3" -> "sha256:87454be988392d7bdcbf4c0507efda5aa70a4a535c24a0ad0f9985a2220dda33" [label=""];
  "sha256:87454be988392d7bdcbf4c0507efda5aa70a4a535c24a0ad0f9985a2220dda33" -> "sha256:3d047ea1a47aca04ac4db3b1f4f2512b7a9c4a17583da4489facd1d63c592e52" [label=""];
  "sha256:a313682f421f9c4ce8b88945a6e27d1bbf79d641619377abff1eccde6b3e46f3" -> "sha256:3d047ea1a47aca04ac4db3b1f4f2512b7a9c4a17583da4489facd1d63c592e52" [label=""];
  "sha256:3d047ea1a47aca04ac4db3b1f4f2512b7a9c4a17583da4489facd1d63c592e52" -> "sha256:16d6ef3868651c6717681f0ddcbe76af0b76ec1b5e99c9d88164d471ab9cc3e9" [label=""];
  "sha256:16d6ef3868651c6717681f0ddcbe76af0b76ec1b5e99c9d88164d471ab9cc3e9" -> "sha256:3dc735e3827310119a3c5c47339f24d72d188700d7a6c695ae55ff80aa55dfd8" [label=""];
  "sha256:a313682f421f9c4ce8b88945a6e27d1bbf79d641619377abff1eccde6b3e46f3" -> "sha256:3dc735e3827310119a3c5c47339f24d72d188700d7a6c695ae55ff80aa55dfd8" [label=""];
  "sha256:3dc735e3827310119a3c5c47339f24d72d188700d7a6c695ae55ff80aa55dfd8" -> "sha256:62d63ea8583f42c2d81396e65fd56f325b062c835c8a7bfb81e3f101f41104be" [label=""];
  "sha256:62d63ea8583f42c2d81396e65fd56f325b062c835c8a7bfb81e3f101f41104be" -> "sha256:1d11b173d598ccfcb48e16a62b9db31ab742672c2331650ce17d4a4aa95d0d2f" [label=""];
}

