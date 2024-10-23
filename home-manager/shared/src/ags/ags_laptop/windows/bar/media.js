const mpris = await Service.import("mpris")

function Media() {
    const label = Utils.watch("", mpris, "player-changed", () => {
        if (mpris.players[0]) {
            const { track_artists, track_title } = mpris.players[0]
            let track = `${track_artists.join(", ")} - ${track_title}`
            return track.length > 40 ? track.slice(0, 40) + '...' : track
        } else {
            return "Nothing is playing"
        }
    })

    return Widget.Button({
        class_name: "menu-media",
        cursor: "pointer",
        on_primary_click: () => mpris.getPlayer("")?.playPause(),
        on_scroll_up: () => mpris.getPlayer("")?.next(),
        on_scroll_down: () => mpris.getPlayer("")?.previous(),
        child: Widget.Label({ label }),
    })
}

export { Media }
