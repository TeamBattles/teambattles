package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * available: found on Twitch&apos;s video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TwitchRecordedStreamRecording implements ValuedEnum {
    Available("available"),
    Unverified("unverified"),
    Removed("removed");
    public final String value;
    TwitchRecordedStreamRecording(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TwitchRecordedStreamRecording forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "available": return Available;
            case "unverified": return Unverified;
            case "removed": return Removed;
            default: return null;
        }
    }
}
