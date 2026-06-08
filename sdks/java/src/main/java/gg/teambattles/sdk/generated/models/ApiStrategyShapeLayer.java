package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Canvas layer the shape renders on.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum ApiStrategyShapeLayer implements ValuedEnum {
    Drawing("drawing"),
    Tokens("tokens");
    public final String value;
    ApiStrategyShapeLayer(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static ApiStrategyShapeLayer forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "drawing": return Drawing;
            case "tokens": return Tokens;
            default: return null;
        }
    }
}
