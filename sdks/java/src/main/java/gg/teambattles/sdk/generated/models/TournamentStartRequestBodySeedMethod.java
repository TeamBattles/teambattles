package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentStartRequestBodySeedMethod implements ValuedEnum {
    Manual("manual"),
    Random("random"),
    Registration("registration");
    public final String value;
    TournamentStartRequestBodySeedMethod(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentStartRequestBodySeedMethod forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "manual": return Manual;
            case "random": return Random;
            case "registration": return Registration;
            default: return null;
        }
    }
}
