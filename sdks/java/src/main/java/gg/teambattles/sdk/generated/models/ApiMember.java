package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * API-safe team or organization member.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiMember implements Parsable {
    /**
     * Membership row ID.
     */
    private String id;
    /**
     * The joinedAt property
     */
    private ApiMemberJoinedAt joinedAt;
    /**
     * Role label within the team or organization.
     */
    private String role;
    /**
     * API-safe public user profile.
     */
    private ApiUserProfile user;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiMember}
     */
    @jakarta.annotation.Nonnull
    public static ApiMember createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiMember();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("joinedAt", (n) -> { this.setJoinedAt(n.getObjectValue(ApiMemberJoinedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("role", (n) -> { this.setRole(n.getStringValue()); });
        deserializerMap.put("user", (n) -> { this.setUser(n.getObjectValue(ApiUserProfile::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Membership row ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the joinedAt property value. The joinedAt property
     * @return a {@link ApiMemberJoinedAt}
     */
    @jakarta.annotation.Nullable
    public ApiMemberJoinedAt getJoinedAt() {
        return this.joinedAt;
    }
    /**
     * Gets the role property value. Role label within the team or organization.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRole() {
        return this.role;
    }
    /**
     * Gets the user property value. API-safe public user profile.
     * @return a {@link ApiUserProfile}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfile getUser() {
        return this.user;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("joinedAt", this.getJoinedAt());
        writer.writeStringValue("role", this.getRole());
        writer.writeObjectValue("user", this.getUser());
    }
    /**
     * Sets the id property value. Membership row ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the joinedAt property value. The joinedAt property
     * @param value Value to set for the joinedAt property.
     */
    public void setJoinedAt(@jakarta.annotation.Nullable final ApiMemberJoinedAt value) {
        this.joinedAt = value;
    }
    /**
     * Sets the role property value. Role label within the team or organization.
     * @param value Value to set for the role property.
     */
    public void setRole(@jakarta.annotation.Nullable final String value) {
        this.role = value;
    }
    /**
     * Sets the user property value. API-safe public user profile.
     * @param value Value to set for the user property.
     */
    public void setUser(@jakarta.annotation.Nullable final ApiUserProfile value) {
        this.user = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiMemberJoinedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMemberJoinedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMemberJoinedAtMember1}
         */
        private ApiMemberJoinedAtMember1 apiMemberJoinedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMemberJoinedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiMemberJoinedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMemberJoinedAt result = new ApiMemberJoinedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMemberJoinedAtMember1(new ApiMemberJoinedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMember_joinedAtMember1 property value. Composed type representation for type {@link ApiMemberJoinedAtMember1}
         * @return a {@link ApiMemberJoinedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMemberJoinedAtMember1 getApiMemberJoinedAtMember1() {
            return this.apiMemberJoinedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMemberJoinedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMemberJoinedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getApiMemberJoinedAtMember1());
            }
        }
        /**
         * Sets the ApiMember_joinedAtMember1 property value. Composed type representation for type {@link ApiMemberJoinedAtMember1}
         * @param value Value to set for the ApiMember_joinedAtMember1 property.
         */
        public void setApiMemberJoinedAtMember1(@jakarta.annotation.Nullable final ApiMemberJoinedAtMember1 value) {
            this.apiMemberJoinedAtMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
}
