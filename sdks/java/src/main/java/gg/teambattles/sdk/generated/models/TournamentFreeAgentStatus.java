package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * State of the caller&apos;s free-agent pool row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentFreeAgentStatus implements ValuedEnum {
    AVAILABLE("AVAILABLE"),
    PICKED_UP("PICKED_UP"),
    WITHDRAWN("WITHDRAWN");
    public final String value;
    TournamentFreeAgentStatus(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentFreeAgentStatus forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "AVAILABLE": return AVAILABLE;
            case "PICKED_UP": return PICKED_UP;
            case "WITHDRAWN": return WITHDRAWN;
            default: return null;
        }
    }
}
