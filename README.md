# drone-releaser

Drone plugin for using [drone-github-release](https://github.com/drone-plugins/drone-github-release) and [release-notary](https://github.com/outillage/release-notary), it can replace [plugin/github-release](https://hub.docker.com/r/plugins/github-release/) image.

[![](https://img.shields.io/badge/Github-thxcode/drone--releaser-orange.svg)](https://github.com/thxcode/drone-releaser)&nbsp;[![](https://img.shields.io/badge/Docker_Hub-maiwj/drone--releaser-orange.svg)](https://hub.docker.com/r/maiwj/drone-releaser)&nbsp;[![](https://img.shields.io/docker/build/maiwj/drone-releaser.svg)](https://hub.docker.com/r/maiwj/drone-releaser)&nbsp;[![](https://img.shields.io/docker/pulls/maiwj/drone-releaser.svg)](https://store.docker.com/community/images/maiwj/drone-releaser)&nbsp;[![](https://img.shields.io/github/license/thxcode/drone-releaser.svg)](https://github.com/thxcode/drone-releaser)

[![](https://images.microbadger.com/badges/image/maiwj/drone-releaser.svg)](https://microbadger.com/images/maiwj/drone-releaser)&nbsp;[![](https://images.microbadger.com/badges/version/maiwj/drone-releaser.svg)](http://microbadger.com/images/maiwj/drone-releaser)&nbsp;[![](https://images.microbadger.com/badges/commit/maiwj/drone-releaser.svg)](http://microbadger.com/images/maiwj/drone-releaser.svg)

## Package

```shell
# build image
IMAGE_NAME=maiwj/drone-releaser:v0.1.0 ./hooks/build

# push image
IMAGE_NAME=maiwj/drone-releaser:v0.1.0 ./hooks/post_push

```

## License

drone-releaser is under the Apache 2.0 license. See the [LICENSE](LICENSE) file for details.