


export const ram = Variable("", {
    poll: [5000, '/home/offlinebot/.config/ags/scripts/ram.sh']
});

export const cpu = Variable("", {
    poll: [5000, '/home/offlinebot/.config/ags/scripts/cpu.sh']
});

export const disk = Variable("", {
    poll: [5000, '/home/offlinebot/.config/ags/scripts/disk.sh']
})

function RAM() {
    return Widget.Label({
        class_name: "ram",
        label: ram.bind()
        })
}

function CPU() {
    return Widget.Label({
        class_name: "cpu",
        label: cpu.bind()
    })
}

export { RAM, CPU }
