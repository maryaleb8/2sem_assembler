from struct import pack
with open('source', 'rb') as inf:
	with open('cracked', 'wb') as outf:
		out.write(inf.read().replace(
			pack('<I', 1000000000),
			pack('<I', 2006632960),
			1
		))
