# CareShare Dokploy Deployment

CareShare is ready to deploy in Dokploy as a Dockerfile application.

Recommended Dokploy settings:

- Build type: Dockerfile
- Dockerfile path: `Dockerfile`
- Exposed port: `3000`
- Healthcheck path: `/`

Useful environment variables:

- `PORT=3000`
- `WS_FALLBACK=false`
- `RATE_LIMIT=false`
- `DEBUG_MODE=false`
- `RTC_CONFIG=false`

For deployments behind a reverse proxy, keep WebSocket support enabled in the proxy. File transfers use WebRTC when available and can use the WebSocket fallback if `WS_FALLBACK=true`.
