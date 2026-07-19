# fit.lemric.com

Public site for **LemricFit**: support and privacy pages for App Store / Play listing.

- Production: https://fit.lemric.com
- Support: https://fit.lemric.com/support/
- Privacy: https://fit.lemric.com/privacy/ (PL: `/pl/privacy/`)
- Contact: biuro@lemric.com

## Local development

Requires [Hugo Extended](https://gohugo.io/installation/).

```bash
hugo server -D
```

## Deploy

Push to `main` runs GitHub Actions → GitHub Pages.

In the repository: **Settings → Pages → Build and deployment → Source: GitHub Actions**.

## Custom domain DNS

At the DNS host for `lemric.com`, add:

| Type  | Name | Value             |
|-------|------|-------------------|
| CNAME | fit  | lemric.github.io  |

(For an organization site, the target may be `Lemric.github.io`.)

Then in **Settings → Pages → Custom domain**, set `fit.lemric.com` and enable HTTPS.

`static/CNAME` already contains `fit.lemric.com`.
