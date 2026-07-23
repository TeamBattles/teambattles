package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * State of a team&apos;s entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team&apos;s own.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentParticipantStatus implements ValuedEnum {
    PENDING("PENDING"),
    APPROVED("APPROVED"),
    DENIED("DENIED"),
    WITHDRAWN("WITHDRAWN"),
    REMOVED("REMOVED"),
    DISQUALIFIED("DISQUALIFIED");
    public final String value;
    TournamentParticipantStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentParticipantStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PENDING": return PENDING;
            case "APPROVED": return APPROVED;
            case "DENIED": return DENIED;
            case "WITHDRAWN": return WITHDRAWN;
            case "REMOVED": return REMOVED;
            case "DISQUALIFIED": return DISQUALIFIED;
            default: return null;
        }
    }
}
