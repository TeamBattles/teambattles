package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentSponsorTagPrefix implements ValuedEnum {
    POWERED_BY("POWERED_BY"),
    SPONSORED_BY("SPONSORED_BY"),
    PRESENTED_BY("PRESENTED_BY"),
    CUSTOM("CUSTOM");
    public final String value;
    TournamentSponsorTagPrefix(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentSponsorTagPrefix forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "POWERED_BY": return POWERED_BY;
            case "SPONSORED_BY": return SPONSORED_BY;
            case "PRESENTED_BY": return PRESENTED_BY;
            case "CUSTOM": return CUSTOM;
            default: return null;
        }
    }
}
