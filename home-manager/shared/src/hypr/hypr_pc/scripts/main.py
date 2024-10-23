print("running script")

import os
import json
import subprocess


user_path = '/home/offlinebot/'
impage_path = 'Pictures/other_wallpaper/'
full_image_path = os.path.join(user_path, impage_path)

#struct = {
#    "maximum": int,
#    "current": int,
#}

def handle_files(path: str):
    cyan    =   "rgba(52c7c5ee)"
    red     =   "rgba(c75252ee)"
    purple  =   "rgba(cb07f7ee)"
    white   =   "rgba(ffffffee)"

    hyprctl_command = ["hyprctl", "keyword", "general:col.active_border"]

    if "cyan" in path:
        hyprctl_command.append(cyan)
        subprocess.run(hyprctl_command)
    elif "red" in path:
        hyprctl_command.append(red)
        subprocess.run(hyprctl_command)
    elif "purple" in path:
        hyprctl_command.append(purple)
        subprocess.run(hyprctl_command)
    else:
        hyprctl_command.append(white)
        subprocess.run(hyprctl_command)

    subprocess.run(["swww", "img", os.path.join(full_image_path, path)], check=True)


files = sorted(
            os.listdir(os.path.join(user_path, 'Pictures/other_wallpaper'))
        )


if not os.path.exists("./data.json"):
    with open("./data.json", "w") as file:
        json.dump({"maximum": 0, "current": 0}, file)

with open("./data.json", "r") as file:
    data = json.load(file)
    current = data['current']
    maximum = data['maximum']
    
    if maximum != len(files):
        print(f"new maximum: {maximum}")
        maximum = len(files)
    
    if current == maximum:
        print("current resetting to 1")
        current = 1
    else:
        print(f"current adding to be: {current}")
        current += 1

    handle_files(files[current - 1])
    
    with open("./data.json", "w") as filew:
        print("write new data")
        json.dump({"maximum": maximum, "current": current}, filew)
