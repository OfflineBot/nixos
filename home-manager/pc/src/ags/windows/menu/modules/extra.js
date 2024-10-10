const mpris = await Service.import("mpris")

const SIZE = 40;

function Icon(path_to_icon, icon_size) {
    return Widget.Icon({
        icon: path_to_icon,
        size: icon_size,
    })
}

const player = Widget.Box({
    class_name: "player-box",
    vertical: false,
    children: [
        Widget.Button({
            class_name: "media-back",
            on_primary_click: () => mpris.getPlayer("")?.previous(),
            child: Icon(App.configDir + "/icons/light/back.png", SIZE)
        }),
        Widget.Button({
            class_name: "media-play",
            on_primary_click: () => mpris.getPlayer("")?.playPause(),
            child: Icon(App.configDir + "/icons/light/playpause.png", SIZE)
        }),
        Widget.Button({
            class_name: "media-next",
            on_primary_click: () => mpris.getPlayer("")?.next(),
            child: Icon(App.configDir + "/icons/light/next.png", SIZE-2)
        })
    ]
})

export const extra_widget = Widget.Box({
    class_name: "extra-widget",
    child: player,
});


