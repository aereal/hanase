# hanase

Playbook for VPS

## Usage

```
echo $vault_password > vault-password
cat <<EOS > inventory
[vps]
hanase ansible_ssh_host=xxx.xxx.xxx.xxx ansible_ssh_port=xxx
EOS
make
```
