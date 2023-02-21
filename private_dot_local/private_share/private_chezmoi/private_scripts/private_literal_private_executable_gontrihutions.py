#!/usr/bin/env python
import requests
from lxml import html
from datetime import datetime

def get_contributions(user):
    page = requests.get('https://github.com/'+ user)
    tree = html.fromstring(page.content)

    contributions = tree.xpath('/html/body/div[4]/main/div[2]/div/div[2]/div[2]/div/div[3]/div/div[1]/div[1]/div[1]/h2')[0]
    
    print(contributions.text.split()[0].strip())

username = "iamtalhaasghar" # <----- Change your username here 
get_contributions(username)

