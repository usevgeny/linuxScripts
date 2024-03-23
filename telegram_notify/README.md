# Script Documentation

This script sends a Telegram message whenever a user logs in. It's particularly useful for monitoring user activity.

## Usage

1. Make sure you have a Telegram bot set up and its token handy.
2. Replace `{{YOUR_CHAT_ID}}` and `{{YOUR_BOT_TOKEN}}` with your Telegram chat ID and bot token respectively.
3. Run the script on your system, preferably as part of your system startup scripts.

```bash
./script_name.sh
```

## Script Details

- [ ] **Author:** [Evgeny USACHEV](mailto:evgeny@usachev.fr)
- **File:** `telegram_notify.sh`
- **Description:** This script sends a Telegram message whenever a user logs in.

## Requirements

- `curl`: The script utilizes `curl` to send HTTP requests to the Telegram API.

## Parameters

- `chat_id`: The Telegram chat ID where the message will be sent.
- `bot_token`: The token of your Telegram bot.
- `stamp`: Timestamp indicating the time of login.

## Example

Here's an example of how to run the script:

```bash
./script_name.sh
```

## Notes

- Ensure the script has executable permissions (`chmod +x script_name.sh`).
- The script might need to be run with superuser privileges (`sudo`) to access certain system information depending on your system's configuration.

## Disclaimer

This script is provided as-is without any warranty. Use it at your own risk.

```
