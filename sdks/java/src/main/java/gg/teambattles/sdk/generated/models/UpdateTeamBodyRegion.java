package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum UpdateTeamBodyRegion implements ValuedEnum {
    NONE("NONE"),
    NA_EAST("NA_EAST"),
    NA_WEST("NA_WEST"),
    EU("EU"),
    ASIA("ASIA"),
    OCEANIA("OCEANIA"),
    SOUTH_AMERICA("SOUTH_AMERICA"),
    MIDDLE_EAST("MIDDLE_EAST"),
    AFRICA("AFRICA");
    public final String value;
    UpdateTeamBodyRegion(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static UpdateTeamBodyRegion forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "NONE": return NONE;
            case "NA_EAST": return NA_EAST;
            case "NA_WEST": return NA_WEST;
            case "EU": return EU;
            case "ASIA": return ASIA;
            case "OCEANIA": return OCEANIA;
            case "SOUTH_AMERICA": return SOUTH_AMERICA;
            case "MIDDLE_EAST": return MIDDLE_EAST;
            case "AFRICA": return AFRICA;
            default: return null;
        }
    }
}
