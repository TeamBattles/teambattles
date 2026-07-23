package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentSubmitForApprovalResponseApprovalStatus implements ValuedEnum {
    APPROVED("APPROVED"),
    AWAITING_APPROVAL("AWAITING_APPROVAL");
    public final String value;
    TournamentSubmitForApprovalResponseApprovalStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentSubmitForApprovalResponseApprovalStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "APPROVED": return APPROVED;
            case "AWAITING_APPROVAL": return AWAITING_APPROVAL;
            default: return null;
        }
    }
}
