package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Strategy share visibility setting.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum StrategyVisibility implements ValuedEnum {
    Private("private"),
    Unlisted("unlisted"),
    Public("public");
    public final String value;
    StrategyVisibility(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static StrategyVisibility forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "private": return Private;
            case "unlisted": return Unlisted;
            case "public": return Public;
            default: return null;
        }
    }
}
