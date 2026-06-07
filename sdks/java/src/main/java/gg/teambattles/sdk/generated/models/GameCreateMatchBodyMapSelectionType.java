package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Map selection type (COMPETITIVE or FLEX).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum GameCreateMatchBodyMapSelectionType implements ValuedEnum {
    COMPETITIVE("COMPETITIVE"),
    FLEX("FLEX");
    public final String value;
    GameCreateMatchBodyMapSelectionType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static GameCreateMatchBodyMapSelectionType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "COMPETITIVE": return COMPETITIVE;
            case "FLEX": return FLEX;
            default: return null;
        }
    }
}
