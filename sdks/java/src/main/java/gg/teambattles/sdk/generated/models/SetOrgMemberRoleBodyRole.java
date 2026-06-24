package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ValuedEnum;
import java.util.Objects;

/**
 * The new role for the member. The owner role is changed via ownership transfer.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public enum SetOrgMemberRoleBodyRole implements ValuedEnum {
    ADMIN("ADMIN"),
    MANAGER("MANAGER"),
    MEMBER("MEMBER");
    public final String value;
    SetOrgMemberRoleBodyRole(final String value) {
        this.value = value;
    }
    @jakarta.annotation.Nonnull
    public String getValue() { return this.value; }
    @jakarta.annotation.Nullable
    public static SetOrgMemberRoleBodyRole forValue(@jakarta.annotation.Nonnull final String searchValue) {
        Objects.requireNonNull(searchValue);
        switch(searchValue) {
            case "ADMIN": return ADMIN;
            case "MANAGER": return MANAGER;
            case "MEMBER": return MEMBER;
            default: return null;
        }
    }
}
