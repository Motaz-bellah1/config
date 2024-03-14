#!/usr/bin/python

import json
from subprocess import check_output

workspaces = json.loads(check_output(["i3-msg", "-t", "get_workspaces"]))
workspace_nums = [ws["num"] for ws in workspaces]
f = next(ws["num"] for ws in workspaces if ws["focused"])
f = int(f)
f =  int(str(f), 2)


for next_num in range(f + 1, 11):
    if next_num not in workspace_nums:
        print(bin(next_num ).removeprefix("0b"))
        break
