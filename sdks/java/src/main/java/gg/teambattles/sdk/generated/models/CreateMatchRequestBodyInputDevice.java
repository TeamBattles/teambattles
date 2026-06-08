package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Input device (defaults to ALL).
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum CreateMatchRequestBodyInputDevice implements ValuedEnum {
    ALL("ALL"),
    CONTROLLER("CONTROLLER"),
    KB_M("KB_M");
    public final String value;
    CreateMatchRequestBodyInputDevice(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static CreateMatchRequestBodyInputDevice forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ALL": return ALL;
            case "CONTROLLER": return CONTROLLER;
            case "KB_M": return KB_M;
            default: return null;
        }
    }
}
