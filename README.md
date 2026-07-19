# fit.lemric.com

Strona LemricFit: pomoc i polityka prywatności (App Store / Google Play).

- https://fit.lemric.com
- Pomoc: https://fit.lemric.com/support/ · https://fit.lemric.com/pl/support/
- Prywatność: https://fit.lemric.com/privacy/ · https://fit.lemric.com/pl/privacy/
- Kontakt: biuro@lemric.com

## Lokalnie

Potrzebujesz [Hugo Extended](https://gohugo.io/installation/).

```bash
hugo server -D
```

## Deploy

Push na `master` uruchamia GitHub Actions → Pages.

W repozytorium: **Settings → Pages → Source: GitHub Actions**.

## DNS

| Typ   | Nazwa | Wartość          |
|-------|-------|------------------|
| CNAME | fit   | lemric.github.io |

Potem Custom domain `fit.lemric.com` i HTTPS. Plik `static/CNAME` już zawiera domenę.
