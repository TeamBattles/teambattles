package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Match platform (e.g. CROSSPLAY).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum GameCreateMatchBodyPlatform implements ValuedEnum {
    PC("PC"),
    XBOX("XBOX"),
    PLAYSTATION("PLAYSTATION"),
    CONSOLE_ONLY("CONSOLE_ONLY"),
    CROSSPLAY("CROSSPLAY");
    public final String value;
    GameCreateMatchBodyPlatform(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static GameCreateMatchBodyPlatform forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "PC": return PC;
            case "XBOX": return XBOX;
            case "PLAYSTATION": return PLAYSTATION;
            case "CONSOLE_ONLY": return CONSOLE_ONLY;
            case "CROSSPLAY": return CROSSPLAY;
            default: return null;
        }
    }
}
