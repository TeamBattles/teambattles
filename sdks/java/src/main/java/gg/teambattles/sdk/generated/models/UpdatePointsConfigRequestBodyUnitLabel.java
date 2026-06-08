package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum UpdatePointsConfigRequestBodyUnitLabel implements ValuedEnum {
    POINTS("POINTS"),
    EXPERIENCE("EXPERIENCE");
    public final String value;
    UpdatePointsConfigRequestBodyUnitLabel(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static UpdatePointsConfigRequestBodyUnitLabel forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "POINTS": return POINTS;
            case "EXPERIENCE": return EXPERIENCE;
            default: return null;
        }
    }
}
