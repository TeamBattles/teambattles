<p align="center">
  <img src="https://teambattles.gg/icon-512.png" alt="TeamBattles" width="128" height="128">
</p>

<h1 align="center">TeamBattles</h1>

<p align="center">
  <strong>Competitive gaming platform for team-based match management</strong>
</p>

<p align="center">
  <a href="https://teambattles.gg"><img src="https://img.shields.io/badge/Live-teambattles.gg-E05A2B" alt="Live"></a>
  <a href="https://teambattles.gg/docs"><img src="https://img.shields.io/badge/Docs-Mintlify-0D9373" alt="Docs"></a>
  <a href="https://ko-fi.com/teambattles"><img src="https://img.shields.io/badge/Ko--fi-Support%20Us-ff5e5b?logo=ko-fi&logoColor=white" alt="Ko-fi"></a>
</p>

---

## 📦 Public mirror

This repository is an automated, read-only public mirror of the **documentation** and
**client SDKs** for [TeamBattles](https://teambattles.gg). Content is synced
automatically from the upstream private monorepo.

> **Do not** open pull requests or commit here directly - changes are overwritten on the
> next sync. Please file issues and contributions through the upstream project.

## 📁 What's inside

| Path              | Description                                                                                       |
| ----------------- | ------------------------------------------------------------------------------------------------ |
| [`docs/`](./docs) | Documentation source (Mintlify). Published at [teambattles.gg/docs](https://teambattles.gg/docs). |
| [`sdks/`](./sdks) | Generated REST API client SDKs for 8 languages.                                                  |

## 🧩 SDKs

Generated clients for the TeamBattles public REST API:

| Language   | Source                                 | Guide                                            |
| ---------- | -------------------------------------- | ------------------------------------------------ |
| C#         | [`sdks/csharp`](./sdks/csharp)         | [docs](https://teambattles.gg/docs/sdks/csharp)     |
| Dart       | [`sdks/dart`](./sdks/dart)             | [docs](https://teambattles.gg/docs/sdks/dart)       |
| Go         | [`sdks/go`](./sdks/go)                 | [docs](https://teambattles.gg/docs/sdks/go)         |
| Java       | [`sdks/java`](./sdks/java)             | [docs](https://teambattles.gg/docs/sdks/java)       |
| PHP        | [`sdks/php`](./sdks/php)               | [docs](https://teambattles.gg/docs/sdks/php)        |
| Python     | [`sdks/python`](./sdks/python)         | [docs](https://teambattles.gg/docs/sdks/python)     |
| Ruby       | [`sdks/ruby`](./sdks/ruby)             | [docs](https://teambattles.gg/docs/sdks/ruby)       |
| TypeScript | [`sdks/typescript`](./sdks/typescript) | [docs](https://teambattles.gg/docs/sdks/typescript) |

## 🔌 API

- **Base path:** `/api/v1/`
- **Auth:** `Authorization: Bearer tb_xxx`
- **OpenAPI spec:** [`docs/api-reference/openapi.json`](./docs/api-reference/openapi.json)
- **Webhooks:** 15 event types (`match.*`, `score.*`, `roster.*`, `team.*`, `player.*`), HMAC-SHA256 signed.

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/TeamBattles">TeamBattles</a>
</p>
