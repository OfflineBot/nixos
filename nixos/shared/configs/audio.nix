{ ... }:
{


#    hardware.pulseaudio.enable = false;
#    security.rtkit.enable = true;
#    services.pipewire = {
#        enable = true;
#        alsa.enable = true;
#        alsa.support32Bit = true;
#        pulse.enable = true;
#    };

    services.pipewire.enable = false;  # Disable PipeWire
    hardware.pulseaudio.enable = true;                   # Enable PulseAudio
}
