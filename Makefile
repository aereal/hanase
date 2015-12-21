INVENTORY_FILE = inventory
VAULT_PASSWORD_FILE = vault-password

apply:
	ansible-playbook \
		--vault-password-file $(VAULT_PASSWORD_FILE) \
		--inventory-file $(INVENTORY_FILE) \
		--become --ask-become-pass \
		site.yml

setup:
	ansible-playbook \
		--vault-password-file $(VAULT_PASSWORD_FILE) \
		--inventory-file $(INVENTORY_FILE) \
		--become --ask-become-pass \
		setup.yml
