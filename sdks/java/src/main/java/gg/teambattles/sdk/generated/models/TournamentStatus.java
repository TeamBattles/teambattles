package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Lifecycle status of a tournament.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentStatus implements ValuedEnum {
    DRAFT("DRAFT"),
    REGISTRATION_OPEN("REGISTRATION_OPEN"),
    REGISTRATION_CLOSED("REGISTRATION_CLOSED"),
    IN_PROGRESS("IN_PROGRESS"),
    COMPLETED("COMPLETED"),
    CANCELLED("CANCELLED");
    public final String value;
    TournamentStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "DRAFT": return DRAFT;
            case "REGISTRATION_OPEN": return REGISTRATION_OPEN;
            case "REGISTRATION_CLOSED": return REGISTRATION_CLOSED;
            case "IN_PROGRESS": return IN_PROGRESS;
            case "COMPLETED": return COMPLETED;
            case "CANCELLED": return CANCELLED;
            default: return null;
        }
    }
}
