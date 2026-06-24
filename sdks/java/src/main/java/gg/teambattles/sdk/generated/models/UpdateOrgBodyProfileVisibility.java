package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

@jakarta.annotation.Generated("com.microsoft.kiota")
public enum UpdateOrgBodyProfileVisibility implements ValuedEnum {
    Public("public"),
    Limited("limited"),
    Private("private");
    public final String value;
    UpdateOrgBodyProfileVisibility(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static UpdateOrgBodyProfileVisibility forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "public": return Public;
            case "limited": return Limited;
            case "private": return Private;
            default: return null;
        }
    }
}
