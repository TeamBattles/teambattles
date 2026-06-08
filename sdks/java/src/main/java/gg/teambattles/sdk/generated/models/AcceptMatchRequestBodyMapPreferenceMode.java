package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Optional map preference mode for selected maps.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum AcceptMatchRequestBodyMapPreferenceMode implements ValuedEnum {
    PREFERRED("PREFERRED"),
    VETO("VETO");
    public final String value;
    AcceptMatchRequestBodyMapPreferenceMode(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static AcceptMatchRequestBodyMapPreferenceMode forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PREFERRED": return PREFERRED;
            case "VETO": return VETO;
            default: return null;
        }
    }
}
