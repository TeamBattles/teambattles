package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Supported streaming platform.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum StreamPlatform implements ValuedEnum {
    TWITCH("TWITCH"),
    YOUTUBE("YOUTUBE"),
    KICK("KICK");
    public final String value;
    StreamPlatform(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static StreamPlatform forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "TWITCH": return TWITCH;
            case "YOUTUBE": return YOUTUBE;
            case "KICK": return KICK;
            default: return null;
        }
    }
}
