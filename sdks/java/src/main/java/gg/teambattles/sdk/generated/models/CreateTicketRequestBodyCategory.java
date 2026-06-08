package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Support category. Entity-bound and staff-only categories are rejected.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum CreateTicketRequestBodyCategory implements ValuedEnum {
    Account("account"),
    Technical_bug("technical_bug"),
    Feature_request("feature_request"),
    Billing("billing"),
    Other("other");
    public final String value;
    CreateTicketRequestBodyCategory(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static CreateTicketRequestBodyCategory forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "account": return Account;
            case "technical_bug": return Technical_bug;
            case "feature_request": return Feature_request;
            case "billing": return Billing;
            case "other": return Other;
            default: return null;
        }
    }
}
