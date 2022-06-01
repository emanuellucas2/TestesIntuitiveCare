import tabula
import csv

#convert all tables in pdf to csv
tabula.convert_into("Zip/Anexo1.pdf", "Teste_EmanuelRodrigues.csv", output_format="csv", pages='all')

