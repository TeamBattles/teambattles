package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum UpdateGameRulesRequestBodyMatchFormat implements ValuedEnum {
    BEST_OF_1("BEST_OF_1"),
    BEST_OF_3("BEST_OF_3"),
    BEST_OF_5("BEST_OF_5"),
    BEST_OF_7("BEST_OF_7"),
    BEST_OF_9("BEST_OF_9");
    public final String value;
    UpdateGameRulesRequestBodyMatchFormat(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static UpdateGameRulesRequestBodyMatchFormat forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "BEST_OF_1": return BEST_OF_1;
            case "BEST_OF_3": return BEST_OF_3;
            case "BEST_OF_5": return BEST_OF_5;
            case "BEST_OF_7": return BEST_OF_7;
            case "BEST_OF_9": return BEST_OF_9;
            default: return null;
        }
    }
}
