import requests

# Define the base URL
base_url = 'http://sponwl.bordeevann09.repl.co'

def add_to_whitelist(api_key, name, hwid):
    headers = {'API-Key': api_key}
    data = {'hwid': hwid}
    url = f'{base_url}/Services/{name}/whitelist/add'
    response = requests.post(url, headers=headers, data=data)
    if response.status_code == 201:
        print(f'Added {hwid} to the whitelist')
    else:
        print('Unauthorized. Check your API key.')



def remove_service(api_key, service_name):
    url = f'{base_url}/remove_service'
    params = {'service': service_name, 'key': api_key}
    response = requests.delete(url, params=params)
    if response.status_code == 200:
        result = response.json()
        print(result['message'])
    elif response.status_code == 401:
        print('Invalid master key')
    elif response.status_code == 404:
        print('Service not found in API keys')
    else:
        print('An error occurred while removing the service')

def add_service(api_key, service_name):
    url = f'{base_url}/add_service'
    params = {'service': service_name, 'key': api_key}
    response = requests.post(url, params=params)
    if response.status_code == 201:
        result = response.json()
        print(result['message'])
    elif response.status_code == 400:
        print('Service name is missing or invalid')
    elif response.status_code == 401:
        print('Invalid master key')
    else:
        print('An error occurred while adding the service')

def is_blacklisted(service_name, hwid):
    url = f'{base_url}/Services/{service_name}/blacklist/is_blacklisted'
    params = {'hwid': hwid}
    response = requests.get(url, params=params)
    if response.status_code == 200:
        result = response.content.decode('utf-8')
        if result == 'true':
            print('The hardware ID is blacklisted.')
        else:
            print('The hardware ID is not blacklisted.')
    elif response.status_code == 404:
        print('File not found')
    else:
        print('An error occurred while checking the blacklist')

def add_to_blacklist(api_key, service_name, hwid):
    url = f'{base_url}/Services/{service_name}/blacklist/add'
    headers = {'API-Key': api_key}
    data = {'hwid': hwid}
    response = requests.post(url, headers=headers, data=data)
    if response.status_code == 201:
        result = response.json()
        print(result['message'])
    elif response.status_code == 401:
        print('Unauthorized. Check your API key')
    else:
        print('An error occurred while adding to the blacklist')

def remove_from_whitelist(api_key, service_name, hwid):
    url = f'{base_url}/Services/{service_name}/whitelist/remove'
    headers = {'API-Key': api_key}
    data = {'hwid': hwid}
    response = requests.delete(url, headers=headers, data=data)
    if response.status_code == 200:
        result = response.json()
        print(result['message'])
    elif response.status_code == 404:
        print('HWID not found in the whitelist')
    elif response.status_code == 401:
        print('Unauthorized')
    else:
        print('An error occurred while removing from the whitelist')

def remove_from_blacklist(api_key, service_name, hwid):
    url = f'{base_url}/Services/{service_name}/blacklist/remove'
    headers = {'API-Key': api_key}
    data = {'hwid': hwid}
    response = requests.delete(url, headers=headers, data=data)
    if response.status_code == 200:
        result = response.json()
        print(result['message'])
    elif response.status_code == 404:
        print('HWID not found in the blacklist')
    elif response.status_code == 401:
        print('Unauthorized')
    else:
        print('An error occurred while removing from the blacklist')
  
