
import os
import json
import subprocess


user_path = '/home/offlinebot/'
impage_path = 'Pictures/other_wallpaper/'
kitty_path = '.config/kitty/'
full_image_path = os.path.join(user_path, impage_path)
full_kitty_path = os.path.join(user_path, kitty_path)

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
        print("setting up cyan")
        hyprctl_command.append(cyan)
        subprocess.run(hyprctl_command)
        print("hyprland borders switched")
        subprocess.run(["cp", os.path.join(full_kitty_path, 'colors/cyan.conf'), os.path.join(full_kitty_path, 'colors.conf')])
        print("terminal colors set")
    elif "red" in path:
        print("setting up red")
        hyprctl_command.append(red)
        subprocess.run(hyprctl_command)
        print("hyprland borders switched")
        subprocess.run(["cp", os.path.join(full_kitty_path, 'colors/red.conf'), os.path.join(full_kitty_path, 'colors.conf')])
        print("terminal colors set")
    elif "purple" in path:
        print("setting up purple")
        hyprctl_command.append(purple)
        subprocess.run(hyprctl_command)
        print("hyprland borders switched")
        subprocess.run(["cp", os.path.join(full_kitty_path, 'colors/purple.conf'), os.path.join(full_kitty_path, 'colors.conf')])
        print("terminal colors set")
    else:
        print("setting up default")
        hyprctl_command.append(white)
        subprocess.run(hyprctl_command)
        print("hyprland borders switched")
        subprocess.run(["cp", os.path.join(full_kitty_path, 'colors/default.conf'), os.path.join(full_kitty_path, 'colors.conf')])
        print("terminal colors set")

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
        maximum = len(files)
    
    if current == maximum:
        current = 1
    else:
        current += 1

    handle_files(files[current - 1])
    
    with open("./data.json", "w") as filew:
        json.dump({"maximum": maximum, "current": current}, filew)
