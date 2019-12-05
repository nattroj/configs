import json
import sys

workspaces = json.loads(sys.stdin.readline())
if len(workspaces):
    urgent = list(filter(lambda workspace: workspace.get('urgent'), workspaces))
    if len(urgent):
        print(urgent[0]['num'])

