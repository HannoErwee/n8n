# n8n — Hustle Automation

Shared n8n instance for all Hustle projects. Runs locally via Docker, deployable to Fly.io.

## Quick start

```bash
docker compose up -d
```

n8n runs at **http://localhost:5678**

## Import workflows

1. Open http://localhost:5678
2. Go to **Workflows → Import from file**
3. Import any `.json` file from `workflows/`

## Workflows

| File | Purpose |
|------|---------|
| `covenant-day-contact.json` | Receives contact form submissions → sends branded email |

## Credentials to configure

After importing the workflow, set up credentials in n8n:

1. **SMTP** — Settings → Credentials → New → SMTP
   - Use Gmail: host `smtp.gmail.com`, port `587`, your Gmail + App Password
2. Set these environment variables (or hardcode in the workflow nodes):
   - `SMTP_FROM_EMAIL` — the address emails are sent from
   - `NOTIFY_EMAIL` — your address (erweehanno@gmail.com)

## Webhook URL

Once running, the contact form webhook lives at:

```
http://localhost:5678/webhook/covenant-day-contact
```

For production (Fly.io), it will be:

```
https://n8n.yourdomain.com/webhook/covenant-day-contact
```

## Deploy to Fly.io

Coming soon — will use persistent volume for n8n data.
