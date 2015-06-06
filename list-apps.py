import json
from urllib import request

url = request.urlopen("https://api.github.com/orgs/byteweaver/repos").read().decode('utf-8')
repos = json.loads(url)

for repo in repos:
    name = repo.get("name")
    if "django-" in name:
        print(name)
