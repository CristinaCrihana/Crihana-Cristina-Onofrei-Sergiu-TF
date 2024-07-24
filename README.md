Prezentare generală
Această configurație Terraform stabilește un mediu de mașini virtuale securizat și scalabil pe Azure. Include provizionarea unei rețele virtuale, a unui subnet, a IP-urilor publice și a mai multor mașini virtuale Linux cu adresare IP dinamică și acces SSH remote activat.

Resurse gestionate
Rețea virtuală și Subnet: Stabilește un mediu de rețea cu un spațiu de adrese definit și un subnet.
IP Public: Alocă adrese IP publice statice pentru accesul extern la VM-uri.
Interfață de Rețea: Gestionează interfețele de rețea pentru VM-uri, inclusiv conexiunea lor la subnet și IP-urile publice.
Mașini Virtuale Linux: Configurează mai multe VM-uri Ubuntu Server bazate pe numărul specificat, fiecare cu o configurare SSH securizată folosind chei RSA.
Parolă Aleatoare: Generează o parolă aleatoare sigură pentru operațiunile administrative.
Cheie Privată TLS: Generează o cheie privată RSA utilizată pentru operațiunile SSH.

Furnizori
AzureRM: Furnizorul principal utilizat pentru gestionarea resurselor Azure.
Variabile (Input)
vm_count: Numărul de mașini virtuale de implementat.

Am cumparat un abonament Azure pentru rularea scriptului. Am instalat Terraform apoi m-am asigurat că furnizorul AzureRM este configurat cu constrângeri de versiune pentru a utiliza funcționalități specifice versiunii 3.0 și superioare.
provider "azurerm" {
  features {}
}

Configurarea Variabilelor:
Am definit numărul de VM-uri și alti parametri variables.tf si variables.tfvars

Pași de Implementare
Inițializare:
"terraform init" este utilizata pentru a inițializa mediul Terraform, care va descărca plugin-urile furnizorilor necesari:

Plan:
"terraform plan" este utilizata pentru a previzualiza modificările pe care Terraform plănuiește să le facă în infrastructura dvs. Azure:

Aplicare:
"terraform apply" este utilizata pentru a crea infrastructura:

Considerații de Securitate
Chei SSH: Utilizarea cheilor RSA pentru acces SSH îmbunătățește securitatea. 
Parole Aleatoare: Parolele generate aleatoriu oferă un nivel ridicat de securitate. 
