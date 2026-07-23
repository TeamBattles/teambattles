package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentCreateRequestBodyRegistrationMode implements ValuedEnum {
    OPEN("OPEN"),
    APPLICATION("APPLICATION"),
    INVITE_ONLY("INVITE_ONLY");
    public final String value;
    TournamentCreateRequestBodyRegistrationMode(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentCreateRequestBodyRegistrationMode forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "OPEN": return OPEN;
            case "APPLICATION": return APPLICATION;
            case "INVITE_ONLY": return INVITE_ONLY;
            default: return null;
        }
    }
}
