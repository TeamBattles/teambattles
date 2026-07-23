package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum TournamentFormatConfigGrandFinalAdvantageType implements ValuedEnum {
    NONE("NONE"),
    WIN_HEADSTART("WIN_HEADSTART"),
    MAP_SELECTION("MAP_SELECTION"),
    BRACKET_RESET("BRACKET_RESET");
    public final String value;
    TournamentFormatConfigGrandFinalAdvantageType(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static TournamentFormatConfigGrandFinalAdvantageType forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "NONE": return NONE;
            case "WIN_HEADSTART": return WIN_HEADSTART;
            case "MAP_SELECTION": return MAP_SELECTION;
            case "BRACKET_RESET": return BRACKET_RESET;
            default: return null;
        }
    }
}
