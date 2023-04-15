# talos-extension-tailscale

A [Tailscale](https://tailscale.com) system extension for [Talos Linux](https://talos.dev).

- [Talos System Extensions](https://github.com/siderolabs/extensions)

## Usage

```yaml
machine:
  install:
    extensions:
      - image: ghcr.io/raylas/talos-extension-tailscale:latest
  env:
    TS_AUTHKEY: <tailscale_auth_key>
    TS_HOSTNAME: <tailscale_hostname>
    TS_ROUTES: <routes_to_advertise>
```
