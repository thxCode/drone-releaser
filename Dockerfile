FROM --platform=$TARGETPLATFORM docker:19.03.5
RUN apk add -U --no-cache make curl bash git

# NB(thxCode): automatic platform ARGs, ref to:
# - https://docs.docker.com/engine/reference/builder/#automatic-platform-args-in-the-global-scope
ARG TARGETPLATFORM
ARG TARGETOS
ARG TARGETARCH

MAINTAINER Frank Mai <frank@rancher.com>
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL \
    io.github.thxcode.build-date=$BUILD_DATE \
    io.github.thxcode.name="drone-releaser" \
    io.github.thxcode.description="Drone plugin for using drone-github-release and release-notary." \
    io.github.thxcode.url="https://github.com/thxcode/drone-releaser" \
    io.github.thxcode.vcs-type="Git" \
    io.github.thxcode.vcs-ref=$VCS_REF \
    io.github.thxcode.vcs-url="https://github.com/thxcode/drone-releaser.git" \
    io.github.thxcode.vendor="Rancher Labs, Inc" \
    io.github.thxcode.version=$VERSION \
    io.github.thxcode.schema-version="1.0" \
    io.github.thxcode.license="Apache 2.0" \
    io.github.thxcode.docker.dockerfile="/Dockerfile"

ENV ARCH=$TARGETARCH
COPY --from=plugins/github-release /bin/drone-github-release /usr/local/bin/
RUN if [ "${ARCH}" = "amd64" ]; then \
    curl -fL "https://github.com/outillage/release-notary/releases/download/v0.7.3/release-notary_0.7.3_$(uname -s)_$(uname -m).tar.gz" -o /tmp/release-notary.tar.gz && tar -xzf /tmp/release-notary.tar.gz -C /usr/local/bin; \
    fi
COPY scripts/* /
VOLUME /release-note

ENTRYPOINT ["/entrypoint.sh"]
