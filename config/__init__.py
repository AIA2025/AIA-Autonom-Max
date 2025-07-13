from dotenv import load_dotenv
import os

load_dotenv()

config = {
    "telegram_token": os.getenv("TELEGRAM_TOKEN"),
    "chat_id": os.getenv("CHAT_ID"),
    "openai_api_key": os.getenv("OPENAI_API_KEY"),
    "shopify_store": os.getenv("SHOPIFY_STORE"),
    "shopify_token": os.getenv("SHOPIFY_TOKEN"),
    "printful_api": os.getenv("PRINTFUL_API"),
    "printful_store_id": os.getenv("PRINTFUL_STORE_ID"),
    "zapier_webhook": os.getenv("ZAPIER_WEBHOOK"),
    "github_token": os.getenv("GITHUB_TOKEN"),
}
