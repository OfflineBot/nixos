
export const time = Variable("", {
    poll: [1000, 'date "+%H:%M:%S"']
})

export const date = Variable("", {
    poll: [1000, 'date "+%d. %b. %Y"'],
})

function Date() {
    return Widget.Label({
        class_name: "date",
        label: date.bind()
        })
}

function Clock() {
    return Widget.Label({
        class_name: "clock",
        label: time.bind(),
    })
}

export { Clock, Date }
