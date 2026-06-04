package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Filter seasons by lifecycle status.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum SeasonsRequestBodyStatus implements ValuedEnum {
    UPCOMING("UPCOMING"),
    ACTIVE("ACTIVE"),
    COMPLETED("COMPLETED");
    public final String value;
    SeasonsRequestBodyStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static SeasonsRequestBodyStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "UPCOMING": return UPCOMING;
            case "ACTIVE": return ACTIVE;
            case "COMPLETED": return COMPLETED;
            default: return null;
        }
    }
}
