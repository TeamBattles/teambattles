package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentUpdateResponseApprovalStatus implements ValuedEnum {
    NOT_SUBMITTED("NOT_SUBMITTED"),
    AWAITING_APPROVAL("AWAITING_APPROVAL"),
    APPROVED("APPROVED"),
    REJECTED("REJECTED");
    public final String value;
    TournamentUpdateResponseApprovalStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentUpdateResponseApprovalStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
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
