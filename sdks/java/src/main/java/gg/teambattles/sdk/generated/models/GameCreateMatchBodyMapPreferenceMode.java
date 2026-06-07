package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Map preference mode (PREFERRED, VETO, or MANUAL).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum GameCreateMatchBodyMapPreferenceMode implements ValuedEnum {
    PREFERRED("PREFERRED"),
    VETO("VETO"),
    MANUAL("MANUAL");
    public final String value;
    GameCreateMatchBodyMapPreferenceMode(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static GameCreateMatchBodyMapPreferenceMode forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PREFERRED": return PREFERRED;
            case "VETO": return VETO;
            case "MANUAL": return MANUAL;
            default: return null;
        }
    }
}
