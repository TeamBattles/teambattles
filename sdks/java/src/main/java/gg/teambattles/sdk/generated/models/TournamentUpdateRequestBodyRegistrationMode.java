package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentUpdateRequestBodyRegistrationMode implements ValuedEnum {
    OPEN("OPEN"),
    APPLICATION("APPLICATION"),
    INVITE_ONLY("INVITE_ONLY");
    public final String value;
    TournamentUpdateRequestBodyRegistrationMode(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentUpdateRequestBodyRegistrationMode forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "OPEN": return OPEN;
            case "APPLICATION": return APPLICATION;
            case "INVITE_ONLY": return INVITE_ONLY;
            default: return null;
        }
    }
}
