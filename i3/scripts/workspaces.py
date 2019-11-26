import json
import sys
from functools import reduce

# command to run after getting current workspace
command = sys.argv[1]

# gets all workspaces
workspaces = json.loads(list(sys.stdin)[0])

# gets current workspace
current_workspace = reduce(lambda x, y: x if x["focused"] else y, workspaces)
current_workspace_index = workspaces.index(current_workspace)
current_workspace_num = current_workspace["num"]

# actions
if command == "next":
    next_workspace = workspaces[current_workspace_index + 1]["num"] if current_workspace_index < len(workspaces)-1 else current_workspace_num + 1
    print("workspace number {}".format(next_workspace))

elif command == "prev":
    prev_workspace = current_workspace_index - 1 if current_workspace_index > 0 else current_workspace_index
    print("workspace number {}".format(workspaces[prev_workspace]["num"]))

elif command == "movetonext":
    next_workspace = current_workspace_num + 1 if current_workspace_index + 1 >= len(workspaces) else workspaces[current_workspace_index+1]["num"]
    print("move container to workspace number {}".format(next_workspace))
    
elif command == "movetoprev":
    prev_workspace = current_workspace_index - 1 if current_workspace_index > 0 else current_workspace_index
    print("move container to workspace number {}".format(workspaces[prev_workspace]["num"]))
