package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Allowed input device (e.g. ALL).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum GameCreateMatchBodyInputDevice implements ValuedEnum {
    ALL("ALL"),
    CONTROLLER("CONTROLLER"),
    KB_M("KB_M");
    public final String value;
    GameCreateMatchBodyInputDevice(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static GameCreateMatchBodyInputDevice forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ALL": return ALL;
            case "CONTROLLER": return CONTROLLER;
            case "KB_M": return KB_M;
            default: return null;
        }
    }
}
