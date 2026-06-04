package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Lifecycle status of a match.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum MatchStatus implements ValuedEnum {
    PENDING("PENDING"),
    ACCEPTED("ACCEPTED"),
    READY("READY"),
    IN_PROGRESS("IN_PROGRESS"),
    COMPLETED("COMPLETED"),
    CANCELLED("CANCELLED"),
    DISPUTED("DISPUTED"),
    FORFEITED("FORFEITED");
    public final String value;
    MatchStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static MatchStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PENDING": return PENDING;
            case "ACCEPTED": return ACCEPTED;
            case "READY": return READY;
            case "IN_PROGRESS": return IN_PROGRESS;
            case "COMPLETED": return COMPLETED;
            case "CANCELLED": return CANCELLED;
            case "DISPUTED": return DISPUTED;
            case "FORFEITED": return FORFEITED;
            default: return null;
        }
    }
}
