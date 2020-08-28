import requests 

def main():
	res = requests.get("https://api.fixer.io/latest?base=USD&symbols=EUR")
	if res.status_code != 200:
		raise Exception("Error")
	data = res.json()
	print(data)

if __name__ == "__main__":
	main()