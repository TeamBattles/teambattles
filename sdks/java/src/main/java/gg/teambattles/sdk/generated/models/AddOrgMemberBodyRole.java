package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * The role to assign to the new member. Ownership is set on creation.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum AddOrgMemberBodyRole implements ValuedEnum {
    ADMIN("ADMIN"),
    MEMBER("MEMBER");
    public final String value;
    AddOrgMemberBodyRole(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static AddOrgMemberBodyRole forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ADMIN": return ADMIN;
            case "MEMBER": return MEMBER;
            default: return null;
        }
    }
}
