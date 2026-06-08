package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Penalty type.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum CreatePenaltyRequestBodyType implements ValuedEnum {
    POINT_DEDUCTION("POINT_DEDUCTION"),
    MATCH_FORFEIT("MATCH_FORFEIT"),
    WARNING("WARNING");
    public final String value;
    CreatePenaltyRequestBodyType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static CreatePenaltyRequestBodyType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "POINT_DEDUCTION": return POINT_DEDUCTION;
            case "MATCH_FORFEIT": return MATCH_FORFEIT;
            case "WARNING": return WARNING;
            default: return null;
        }
    }
}
