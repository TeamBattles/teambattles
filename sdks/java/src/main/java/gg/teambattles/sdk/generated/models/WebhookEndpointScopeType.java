package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * The single scope dimension an endpoint is bound to.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum WebhookEndpointScopeType implements ValuedEnum {
    Game("game"),
    League("league"),
    Org("org"),
    Team("team"),
    User("user");
    public final String value;
    WebhookEndpointScopeType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static WebhookEndpointScopeType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "game": return Game;
            case "league": return League;
            case "org": return Org;
            case "team": return Team;
            case "user": return User;
            default: return null;
        }
    }
}
