package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Supported leaderboard sort field.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum LeaderboardSortBy implements ValuedEnum {
    Wins("wins"),
    WinRate("winRate"),
    Experience("experience");
    public final String value;
    LeaderboardSortBy(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static LeaderboardSortBy forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "wins": return Wins;
            case "winRate": return WinRate;
            case "experience": return Experience;
            default: return null;
        }
    }
}
