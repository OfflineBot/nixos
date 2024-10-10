

import { time, date } from "../../bar/clock.js";

const time_label = Widget.Label({
    class_name: "time-label",
    label: time.bind(),
})

const date_label = Widget.Label({
    class_name: "date-label",
    label: date.bind(),
})

export const time_widget = Widget.Box({
    vertical: true,
    class_name: "time-widget",
    children: [
        date_label,
        time_label
    ]
});
