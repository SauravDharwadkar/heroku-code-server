lar=-1
sml=None
while True:
	inn=input("enter num :")
	if inn=="done":
		break
	try:
		numb = int(inn)
	except Exception as e:
		print (e)
	print (type(inn))
	print (type(numb))