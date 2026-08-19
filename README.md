<!-- foundation:identity -->
# Probe Guestbook

A one-page guestbook: visitors type a short message and see the wall of
messages, newest first. No accounts, no admin — open to anyone.

- Site: https://probe-0c07b3.api.holode.xyz
- Support: support@probe-0c07b3.api.holode.xyz
<!-- /foundation:identity -->

- **Post a note** — name optional, message up to 500 characters.
- **See the wall** — every note, newest first, on the single page.
- Runs on [Vela](https://demo.holode.xyz/)'s Ruby on Rails production
  foundation with Material Design 3 chrome.

## Run it yourself

```bash
bin/setup
bin/dev
```

The demo deck wipes daily at 3AM Mexico City; this repository is the keeper.

## Stack

Ruby on Rails, PostgreSQL, Hotwire/Turbo, Material Design 3 tokens, and the
Holodex verified build + deploy pipeline. See `docs/` for the foundation
contracts.
