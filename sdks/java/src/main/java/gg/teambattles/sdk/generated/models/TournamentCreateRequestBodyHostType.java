package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentCreateRequestBodyHostType implements ValuedEnum {
    User("user"),
    Org("org"),
    League("league");
    public final String value;
    TournamentCreateRequestBodyHostType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentCreateRequestBodyHostType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "user": return User;
            case "org": return Org;
            case "league": return League;
            default: return null;
        }
    }
}
