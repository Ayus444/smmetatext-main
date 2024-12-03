import os

# Fetch API credentials from environment variables
api_id = os.getenv('TELEGRAM_API_ID')
api_hash = os.getenv('TELEGRAM_API_HASH')
bot_token = os.getenv('TELEGRAM_BOT_TOKEN')

# Ensure that the environment variables are set correctly
#if not api_id or not api_hash or not bot_token:
    #raise ValueError("Missing required environment variables: TELEGRAM_API_ID, TELEGRAM_API_HASH, or TELEGRAM_BOT_TOKEN")
