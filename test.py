from requests import post 
from json import loads
import os
from dotenv import load_dotenv
load_dotenv()

llm_port = os.environ.get('LLM_CONTAINER_PORT')
url = "http://localhost:" + llm_port +"/api/generate"
response_text = ""
for chunk in post(url, json={"model": "llama3.2", "prompt": "What can you do?"}).text.splitlines():
    response_text += loads(chunk)["response"]
print(response_text)