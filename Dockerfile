ARG TAILSCALE_VERSION

FROM ghcr.io/tailscale/tailscale:v$TAILSCALE_VERSION as tailscale
FROM scratch AS extension

COPY --from=tailscale / /rootfs/usr/local/lib/containers/tailscale/
COPY tailscale.yaml /rootfs/usr/local/etc/containers/tailscale.yaml
COPY manifest.yaml /manifest.yaml
