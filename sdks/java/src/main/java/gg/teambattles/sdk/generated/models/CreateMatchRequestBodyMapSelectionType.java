package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Map selection type.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum CreateMatchRequestBodyMapSelectionType implements ValuedEnum {
    COMPETITIVE("COMPETITIVE"),
    FLEX("FLEX");
    public final String value;
    CreateMatchRequestBodyMapSelectionType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static CreateMatchRequestBodyMapSelectionType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "COMPETITIVE": return COMPETITIVE;
            case "FLEX": return FLEX;
            default: return null;
        }
    }
}
