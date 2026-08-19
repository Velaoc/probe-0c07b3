<!-- foundation:identity -->
# Probe Guestbook

A one-page guestbook where visitors type a short message and see the wall of messages, newest first. No accounts, no admin open to anyone.

- Site: https://probe-0c07b3.api.holode.xyz
- Support: support@probe-0c07b3.api.holode.xyz
<!-- /foundation:identity -->

## What this is

A one-page guestbook where visitors type a short message and see the wall of messages, newest first. No accounts, no admin — open to anyone.

## Main features

- **Post a message** — Visitor types a short message (optionally a name) and submits; it appears at the top of the wall.
- **View the wall** — The single page shows all messages, newest first.

## Core entities

- Entry

## Run locally

```bash
bundle install
bin/rails db:prepare
bin/dev
```

Requires Ruby, PostgreSQL, and the usual Rails toolchain. See `bin/setup` if present.

## Demo

A handful of welcome messages so the wall isn't empty on first load.

## Deploy notes

Production `config.hosts` is derived from `domain` in `config/foundation.yml`. Keep that value aligned with the real host or every request will 403.
