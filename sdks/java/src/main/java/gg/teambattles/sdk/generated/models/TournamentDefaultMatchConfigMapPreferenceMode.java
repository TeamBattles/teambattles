package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Overridden to MANUAL for the grand final when formatConfig.grandFinalAdvantage.type is MAP_SELECTION.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentDefaultMatchConfigMapPreferenceMode implements ValuedEnum {
    PREFERRED("PREFERRED"),
    VETO("VETO"),
    MANUAL("MANUAL");
    public final String value;
    TournamentDefaultMatchConfigMapPreferenceMode(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentDefaultMatchConfigMapPreferenceMode forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PREFERRED": return PREFERRED;
            case "VETO": return VETO;
            case "MANUAL": return MANUAL;
            default: return null;
        }
    }
}
