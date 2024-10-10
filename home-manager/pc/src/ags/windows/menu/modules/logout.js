
function Icon(path_to_icon, icon_size) {
    return Widget.Icon({
        icon: path_to_icon,
        size: icon_size,
    })
}

function btn_container(name, command, class_name, path_to_icon, icon_size) {
    return Widget.Button({
        class_names: [class_name, "menu-logout-btn"],
        on_clicked: () => {
            Utils.exec(command);
        },
        //tooltip_text: name,
        child: Widget.Box({
            vertical: true,
            children: [
                Icon(path_to_icon, icon_size),
                //Widget.Label({ label: name })
            ]
        })
    })
}

export const power_widget = (icon_size) => { 
    return Widget.Box({
        class_name: "power-widget",
        vertical: true,
        children: [
            btn_container("Shutdown", "systemctl poweroff", "power-shutdown", App.configDir + "/icons/light/shutdown.png", icon_size),
            btn_container("Reboot", "systemctl reboot", "power-reboot", App.configDir + "/icons/light/reboot.png", icon_size),
            btn_container("Logout", "hyprctl dispatch exit", "power-logout", App.configDir + "/icons/light/logout.png", icon_size),
            btn_container("Lock", "hyprlock", "power-lock", App.configDir + "/icons/light/lock.png", icon_size)
        ]
    });

}
