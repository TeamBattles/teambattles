package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Bracket format of a tournament.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentFormat implements ValuedEnum {
    SINGLE_ELIMINATION("SINGLE_ELIMINATION"),
    DOUBLE_ELIMINATION("DOUBLE_ELIMINATION"),
    ROUND_ROBIN("ROUND_ROBIN"),
    SWISS("SWISS");
    public final String value;
    TournamentFormat(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentFormat forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "SINGLE_ELIMINATION": return SINGLE_ELIMINATION;
            case "DOUBLE_ELIMINATION": return DOUBLE_ELIMINATION;
            case "ROUND_ROBIN": return ROUND_ROBIN;
            case "SWISS": return SWISS;
            default: return null;
        }
    }
}
