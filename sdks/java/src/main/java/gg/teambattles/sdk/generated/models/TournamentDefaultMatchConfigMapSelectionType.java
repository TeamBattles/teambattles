package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentDefaultMatchConfigMapSelectionType implements ValuedEnum {
    COMPETITIVE("COMPETITIVE"),
    FLEX("FLEX");
    public final String value;
    TournamentDefaultMatchConfigMapSelectionType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentDefaultMatchConfigMapSelectionType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "COMPETITIVE": return COMPETITIVE;
            case "FLEX": return FLEX;
            default: return null;
        }
    }
}
