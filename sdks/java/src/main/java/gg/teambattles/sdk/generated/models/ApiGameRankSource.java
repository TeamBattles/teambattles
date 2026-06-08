package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Origin of the rank: manual entry or an API push.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum ApiGameRankSource implements ValuedEnum {
    Manual("manual"),
    Api("api");
    public final String value;
    ApiGameRankSource(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static ApiGameRankSource forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "manual": return Manual;
            case "api": return Api;
            default: return null;
        }
    }
}
