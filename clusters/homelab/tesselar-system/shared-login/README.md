# Shared login

OAuth2 Proxy uses Zitadel. Any authenticated user with a verified email may enter.

- `AuthClient/shared-login` creates the client credentials Secret.
- `Secret/shared-login-session`, key `cookie-secret`, is created once outside Git. Preserve it across deployments.
- The middleware protects app routes. `/oauth2/` routes to the login service without that middleware.
- Zitadel and the login service remain reachable without the gate.
