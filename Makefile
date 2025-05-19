aks_up:
	./aks.sh

aks_down:
	./aks_down.sh

security_check:
	./security_check.sh

lint:
	terraform -chdir=modules fmt -check
	terraform -chdir=modules validate