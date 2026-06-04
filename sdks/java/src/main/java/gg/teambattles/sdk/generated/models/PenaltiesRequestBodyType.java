package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Which record kinds to return. Defaults to all.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum PenaltiesRequestBodyType implements ValuedEnum {
    Penalties("penalties"),
    Cooldowns("cooldowns"),
    All("all");
    public final String value;
    PenaltiesRequestBodyType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static PenaltiesRequestBodyType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "penalties": return Penalties;
            case "cooldowns": return Cooldowns;
            case "all": return All;
            default: return null;
        }
    }
}
