package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * Assignable league staff role. OWNER cannot be assigned through this API.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum UpdateLeagueMemberRoleRequestBodyRole implements ValuedEnum {
    ADMIN("ADMIN"),
    MANAGER("MANAGER"),
    MEMBER("MEMBER");
    public final String value;
    UpdateLeagueMemberRoleRequestBodyRole(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static UpdateLeagueMemberRoleRequestBodyRole forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ADMIN": return ADMIN;
            case "MANAGER": return MANAGER;
            case "MEMBER": return MEMBER;
            default: return null;
        }
    }
}
