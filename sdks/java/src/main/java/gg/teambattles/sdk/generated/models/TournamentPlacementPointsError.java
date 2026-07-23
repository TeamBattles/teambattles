package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentPlacementPointsError implements ValuedEnum {
    EMPTY("EMPTY"),
    ALL_ZERO("ALL_ZERO"),
    TOO_MANY_ROWS("TOO_MANY_ROWS"),
    BAD_PLACEMENT("BAD_PLACEMENT"),
    BAD_POINTS("BAD_POINTS"),
    DUPLICATE("DUPLICATE"),
    NOT_ASCENDING("NOT_ASCENDING");
    public final String value;
    TournamentPlacementPointsError(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentPlacementPointsError forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "EMPTY": return EMPTY;
            case "ALL_ZERO": return ALL_ZERO;
            case "TOO_MANY_ROWS": return TOO_MANY_ROWS;
            case "BAD_PLACEMENT": return BAD_PLACEMENT;
            case "BAD_POINTS": return BAD_POINTS;
            case "DUPLICATE": return DUPLICATE;
            case "NOT_ASCENDING": return NOT_ASCENDING;
            default: return null;
        }
    }
}
