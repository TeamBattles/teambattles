package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * The tournament&apos;s approval status as of this request&apos;s authorization snapshot. Cancelling does NOT touch it, so it is reported as an INDEPENDENT field: `CANCELLED` alongside `NOT_SUBMITTED` is a real, reachable pair, and any status projection you build must handle it rather than deriving one field from the other.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentCancelResponseApprovalStatus implements ValuedEnum {
    NOT_SUBMITTED("NOT_SUBMITTED"),
    AWAITING_APPROVAL("AWAITING_APPROVAL"),
    APPROVED("APPROVED"),
    REJECTED("REJECTED");
    public final String value;
    TournamentCancelResponseApprovalStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentCancelResponseApprovalStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "NOT_SUBMITTED": return NOT_SUBMITTED;
            case "AWAITING_APPROVAL": return AWAITING_APPROVAL;
            case "APPROVED": return APPROVED;
            case "REJECTED": return REJECTED;
            default: return null;
        }
    }
}
