package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Aggregate season state across the league&apos;s games.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum LeagueSummarySeasonStatus implements ValuedEnum {
    Active("active"),
    Upcoming("upcoming"),
    None("none");
    public final String value;
    LeagueSummarySeasonStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static LeagueSummarySeasonStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "active": return Active;
            case "upcoming": return Upcoming;
            case "none": return None;
            default: return null;
        }
    }
}
