package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Match type.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum CreateMatchRequestBodyMatchType implements ValuedEnum {
    XP_ONLY("XP_ONLY"),
    WAGER("WAGER");
    public final String value;
    CreateMatchRequestBodyMatchType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static CreateMatchRequestBodyMatchType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "XP_ONLY": return XP_ONLY;
            case "WAGER": return WAGER;
            default: return null;
        }
    }
}
