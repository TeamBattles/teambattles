package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Defaults to the platform default when omitted. NOT editable afterwards.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentCreateRequestBodySeedingMethod implements ValuedEnum {
    MANUAL("MANUAL"),
    RANDOM("RANDOM"),
    REGISTRATION("REGISTRATION");
    public final String value;
    TournamentCreateRequestBodySeedingMethod(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentCreateRequestBodySeedingMethod forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "MANUAL": return MANUAL;
            case "RANDOM": return RANDOM;
            case "REGISTRATION": return REGISTRATION;
            default: return null;
        }
    }
}
