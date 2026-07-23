package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * How a player reached a participant&apos;s tournament roster.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentRosterSource implements ValuedEnum {
    TEAM_MEMBER("TEAM_MEMBER"),
    FREE_AGENT("FREE_AGENT");
    public final String value;
    TournamentRosterSource(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentRosterSource forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "TEAM_MEMBER": return TEAM_MEMBER;
            case "FREE_AGENT": return FREE_AGENT;
            default: return null;
        }
    }
}
