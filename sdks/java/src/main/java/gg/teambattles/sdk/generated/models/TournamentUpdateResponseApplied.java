package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentUpdateResponseApplied implements ValuedEnum {
    Direct("direct"),
    Pending("pending"),
    Noop("noop");
    public final String value;
    TournamentUpdateResponseApplied(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentUpdateResponseApplied forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "direct": return Direct;
            case "pending": return Pending;
            case "noop": return Noop;
            default: return null;
        }
    }
}
