from requests import post 
from json import loads
response_text = ""
for chunk in post(url="http://localhost:3000/api/generate", json={"model": "llama3.2", "prompt": "What can you do?"}).text.splitlines():
    # print (type(loads(chunk)["response"]))
    response_text += loads(chunk)["response"]
print(response_text)