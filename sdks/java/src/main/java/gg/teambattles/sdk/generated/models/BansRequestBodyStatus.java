package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Filter bans by computed status. Defaults to all.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum BansRequestBodyStatus implements ValuedEnum {
    Active("active"),
    Expired("expired"),
    Revoked("revoked"),
    All("all");
    public final String value;
    BansRequestBodyStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static BansRequestBodyStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "active": return Active;
            case "expired": return Expired;
            case "revoked": return Revoked;
            case "all": return All;
            default: return null;
        }
    }
}
