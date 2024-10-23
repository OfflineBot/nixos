const hyprland = await Service.import("hyprland")

function ClientTitle() {
    let title_name = hyprland.active.client.bind("title").as(value => value.length > 40 ? value.slice(0, 50) + '...' : value);
    return Widget.Label({
        class_name: "client-title",
        label: title_name,
    })
}

export { ClientTitle }
