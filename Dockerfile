#test
FROM caddy:2.5.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.5.2-builder

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
