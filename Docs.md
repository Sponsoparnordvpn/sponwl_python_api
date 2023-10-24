# Sponsoparnordvpn's whitelisting service
Welcome to sponwl, it's a python or lua whitelist.


How to use the API ?

# Documentation 🔌

First, you need to clone this GitHub, which is not hard to do.
Enter this in your python command prompt
```sh
git clone https://github.com/Sponsoparnordvpn/sponwl.git
```
Then, run the following command:

```sh
pip install -r requirements.txt
```

Once everything is setup, you will see those files :
dist ( folder )
main.py
bot.py
Docs.md ( delete it )

bot.py is actually a pre-coded discord bot using every commands.
main.py is actually a blank file, so you can do what you want.
dist folder is actually where i store my package, do not remove it's important

Functions documentation :

1. Add an hwid to the whitelist
```py
add_to_whitelist(api_key, name, hwid)
# Api_key is your actual sponwl api_key, brought to you by sponsoparnordvpn only
# name is your service name
# hwid is the target hwid
```
