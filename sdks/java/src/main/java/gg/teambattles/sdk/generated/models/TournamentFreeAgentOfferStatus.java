package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentFreeAgentOfferStatus implements ValuedEnum {
    PENDING("PENDING"),
    ACCEPTED("ACCEPTED"),
    DECLINED("DECLINED"),
    EXPIRED("EXPIRED"),
    REVOKED("REVOKED");
    public final String value;
    TournamentFreeAgentOfferStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentFreeAgentOfferStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PENDING": return PENDING;
            case "ACCEPTED": return ACCEPTED;
            case "DECLINED": return DECLINED;
            case "EXPIRED": return EXPIRED;
            case "REVOKED": return REVOKED;
            default: return null;
        }
    }
}
