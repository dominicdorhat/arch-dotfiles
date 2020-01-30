# systemd

to list current running processes and their parents/children in a tree-like structure: </br>
`pstree`


list all enabled services
```bash
systemctl list-unit-files | grep enabled
```
