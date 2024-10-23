
function Icon(path_to_icon, icon_size) {
    return Widget.Icon({
        icon: path_to_icon,
        size: icon_size,
    })
}

function btn_container(name, command, path_to_icon, icon_size) {
    return Widget.Button({
        class_name: "logout-btn",
        on_clicked: () => Utils.exec(command),
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

export const row = (icon_size) => { 
    return Widget.CenterBox({
    class_name: "logout-boxes",
    start_widget: btn_container("Logout", "hyprctl dispatch exit", "/home/offlinebot/.config/ags/icons/light/logout.png", icon_size),
    center_widget: btn_container("Power Off", "systemctl poweroff", "/home/offlinebot/.config/ags/icons/light/shutdown.png", icon_size),
    end_widget: btn_container("Reboot", "reboot", "/home/offlinebot/.config/ags/icons/light/reboot.png", icon_size)
})
}

const logout_container = Widget.Box({
    spacing: 8,
    vertical: true,
    children: [
        row(120),
    ]
})

export const logout = Widget.Window({
    name: "logout",
    //monitor: 2,
    setup: self => self.keybind("Escape", () => {
        App.closeWindow("logout")
    }),
    visible: false,
    class_name: "logout",
    keymode: "exclusive",
    child: logout_container
})


