package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum ApiMatchPlayerRosterType implements ValuedEnum {
    ACTIVE("ACTIVE"),
    BENCH("BENCH");
    public final String value;
    ApiMatchPlayerRosterType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static ApiMatchPlayerRosterType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ACTIVE": return ACTIVE;
            case "BENCH": return BENCH;
            default: return null;
        }
    }
}
