# runbooks

Ansible playbooks and runbooks for the home lab and the day job.

## Layout

- `playbooks/` task-focused playbooks (config backups, OS upgrades, audits)
- `inventory.ini` host inventory, grouped by role
- `backups/` git-ignored, populated by playbook runs
