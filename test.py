import requests
import json
url = 'http://172.19.100.20:8000/configSetAPP/configUpload/'
body = {}

headers = {'content-type': "application/json", 'Authorization': 'APP appid = 4abf1a,token = 9480295ab2e2eddb8'}

response = requests.post(url, data=json.dumps(body), headers=headers)
print(response.text)
