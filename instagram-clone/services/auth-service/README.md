# Auth Service

This service will own authentication, sign-in flows, session handling, token issuance, and user identity boundaries for the platform.

## Expected API Surface

- `POST /auth/register`
- `POST /auth/login`
- `POST /auth/logout`
- `GET /auth/me`

This is a rough draft and will be refined as the domain model matures.
