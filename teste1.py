import urllib.request
from bs4 import BeautifulSoup
import requests
import shutil
import os

#URL to download pdfs
gov = "https://www.gov.br/ans/pt-br/assuntos/consumidor/o-que-o-seu-plano-de-saude-deve-cobrir-1/o-que-e-o-rol-de-procedimentos-e-evento-em-saude"

#using Soup to read HTML
page = urllib.request.urlopen(gov)
soup = BeautifulSoup(page, 'html5lib')

#Get all links
all_links = soup.find_all('a')

i = 0

#creating a directory to save pdfs
os.mkdir('Zip')

#looking for the right links and downloading
for link in all_links:

	url = link.get("href")

	if 'Anexo' in url and '.pdf' in url:

		i = i + 1
		pdf = requests.get(url)

		with open("Zip/Anexo" + str(i) + ".pdf",'wb') as f: 
				f.write(pdf.content)

#zip files
shutil.make_archive("Anexos", 'zip', "Zip")