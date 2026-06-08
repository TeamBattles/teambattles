package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Game definition ID to set the rank for (a playable game).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum GameRankUpsertBodyGameId implements ValuedEnum {
    Call_of_duty_black_ops_7("call_of_duty_black_ops_7"),
    Valorant("valorant"),
    League_of_legends("league_of_legends"),
    Counter_strike_2("counter_strike_2");
    public final String value;
    GameRankUpsertBodyGameId(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static GameRankUpsertBodyGameId forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "call_of_duty_black_ops_7": return Call_of_duty_black_ops_7;
            case "valorant": return Valorant;
            case "league_of_legends": return League_of_legends;
            case "counter_strike_2": return Counter_strike_2;
            default: return null;
        }
    }
}
