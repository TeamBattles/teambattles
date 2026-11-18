package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum StreamSignalsBodyChannelsKind implements ValuedEnum {
    Favorite("favorite"),
    Follow("follow"),
    Watch("watch");
    public final String value;
    StreamSignalsBodyChannelsKind(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static StreamSignalsBodyChannelsKind forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "favorite": return Favorite;
            case "follow": return Follow;
            case "watch": return Watch;
            default: return null;
        }
    }
}
