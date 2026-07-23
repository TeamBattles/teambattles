package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * State of a tournament team invite.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentInviteStatus implements ValuedEnum {
    PENDING("PENDING"),
    ACCEPTED("ACCEPTED"),
    DECLINED("DECLINED"),
    REVOKED("REVOKED");
    public final String value;
    TournamentInviteStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentInviteStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PENDING": return PENDING;
            case "ACCEPTED": return ACCEPTED;
            case "DECLINED": return DECLINED;
            case "REVOKED": return REVOKED;
            default: return null;
        }
    }
}
