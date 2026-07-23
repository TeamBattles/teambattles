package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentCreateRequestBodyVisibility implements ValuedEnum {
    PUBLIC("PUBLIC"),
    UNLISTED("UNLISTED");
    public final String value;
    TournamentCreateRequestBodyVisibility(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentCreateRequestBodyVisibility forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PUBLIC": return PUBLIC;
            case "UNLISTED": return UNLISTED;
            default: return null;
        }
    }
}
