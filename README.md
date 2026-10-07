# Nars Bio Pages

Cloudflare Pages bio-link project for `nars.fun`.

## Cloudflare Pages

- Production branch: `main`
- Framework preset: `None`
- Build command: `bash build.sh`
- Build output directory: `public`
- Root directory: blank

## Environment variables

- `GITHUB_OWNER=fbstoryaccoutn1-jpg`
- `GITHUB_REPO=narsfun`
- `GITHUB_BRANCH=main`
- `GITHUB_TOKEN=<token with Contents: Read and write for narsfun>`
- `ADMIN_PASSWORD=<your admin password>`

The build preserves the original `/part4-video-full/preview.jpg` and verifies its SHA-256 before deployment.
The seeded `/part4-video-full` page keeps the original 1-second redirect to:
`https://share.google/Wph2iCoxWyBdeHHX0`.
