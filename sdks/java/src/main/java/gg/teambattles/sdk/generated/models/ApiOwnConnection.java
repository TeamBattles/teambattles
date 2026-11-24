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
 * API-safe connection for the API key owner, including private fields.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiOwnConnection implements Parsable {
    /**
     * The connectedAt property
     */
    private ApiOwnConnectionConnectedAt connectedAt;
    /**
     * Gaming platform (e.g. pc / console), when set.
     */
    private String gamingPlatform;
    /**
     * Connection ID.
     */
    private String id;
    /**
     * The isPrimary property
     */
    private Boolean isPrimary;
    /**
     * True when the connection was self-reported (ownership unverified).
     */
    private Boolean isSelfReported;
    /**
     * The isVerified property
     */
    private Boolean isVerified;
    /**
     * Connected platform.
     */
    private String platform;
    /**
     * Connection region, when set.
     */
    private String region;
    /**
     * Whether the owner has chosen to show this connection on their profile.
     */
    private Boolean showOnProfile;
    /**
     * The url property
     */
    private String url;
    /**
     * The username property
     */
    private String username;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiOwnConnection}
     */
    @jakarta.annotation.Nonnull
    public static ApiOwnConnection createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiOwnConnection();
    }
    /**
     * Gets the connectedAt property value. The connectedAt property
     * @return a {@link ApiOwnConnectionConnectedAt}
     */
    @jakarta.annotation.Nullable
    public ApiOwnConnectionConnectedAt getConnectedAt() {
        return this.connectedAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(11);
        deserializerMap.put("connectedAt", (n) -> { this.setConnectedAt(n.getObjectValue(ApiOwnConnectionConnectedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("gamingPlatform", (n) -> { this.setGamingPlatform(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isPrimary", (n) -> { this.setIsPrimary(n.getBooleanValue()); });
        deserializerMap.put("isSelfReported", (n) -> { this.setIsSelfReported(n.getBooleanValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getStringValue()); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getStringValue()); });
        deserializerMap.put("showOnProfile", (n) -> { this.setShowOnProfile(n.getBooleanValue()); });
        deserializerMap.put("url", (n) -> { this.setUrl(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gamingPlatform property value. Gaming platform (e.g. pc / console), when set.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGamingPlatform() {
        return this.gamingPlatform;
    }
    /**
     * Gets the id property value. Connection ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isPrimary property value. The isPrimary property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsPrimary() {
        return this.isPrimary;
    }
    /**
     * Gets the isSelfReported property value. True when the connection was self-reported (ownership unverified).
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsSelfReported() {
        return this.isSelfReported;
    }
    /**
     * Gets the isVerified property value. The isVerified property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsVerified() {
        return this.isVerified;
    }
    /**
     * Gets the platform property value. Connected platform.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPlatform() {
        return this.platform;
    }
    /**
     * Gets the region property value. Connection region, when set.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRegion() {
        return this.region;
    }
    /**
     * Gets the showOnProfile property value. Whether the owner has chosen to show this connection on their profile.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getShowOnProfile() {
        return this.showOnProfile;
    }
    /**
     * Gets the url property value. The url property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUrl() {
        return this.url;
    }
    /**
     * Gets the username property value. The username property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("connectedAt", this.getConnectedAt());
        writer.writeStringValue("gamingPlatform", this.getGamingPlatform());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isPrimary", this.getIsPrimary());
        writer.writeBooleanValue("isSelfReported", this.getIsSelfReported());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeStringValue("platform", this.getPlatform());
        writer.writeStringValue("region", this.getRegion());
        writer.writeBooleanValue("showOnProfile", this.getShowOnProfile());
        writer.writeStringValue("url", this.getUrl());
        writer.writeStringValue("username", this.getUsername());
    }
    /**
     * Sets the connectedAt property value. The connectedAt property
     * @param value Value to set for the connectedAt property.
     */
    public void setConnectedAt(@jakarta.annotation.Nullable final ApiOwnConnectionConnectedAt value) {
        this.connectedAt = value;
    }
    /**
     * Sets the gamingPlatform property value. Gaming platform (e.g. pc / console), when set.
     * @param value Value to set for the gamingPlatform property.
     */
    public void setGamingPlatform(@jakarta.annotation.Nullable final String value) {
        this.gamingPlatform = value;
    }
    /**
     * Sets the id property value. Connection ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isPrimary property value. The isPrimary property
     * @param value Value to set for the isPrimary property.
     */
    public void setIsPrimary(@jakarta.annotation.Nullable final Boolean value) {
        this.isPrimary = value;
    }
    /**
     * Sets the isSelfReported property value. True when the connection was self-reported (ownership unverified).
     * @param value Value to set for the isSelfReported property.
     */
    public void setIsSelfReported(@jakarta.annotation.Nullable final Boolean value) {
        this.isSelfReported = value;
    }
    /**
     * Sets the isVerified property value. The isVerified property
     * @param value Value to set for the isVerified property.
     */
    public void setIsVerified(@jakarta.annotation.Nullable final Boolean value) {
        this.isVerified = value;
    }
    /**
     * Sets the platform property value. Connected platform.
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final String value) {
        this.platform = value;
    }
    /**
     * Sets the region property value. Connection region, when set.
     * @param value Value to set for the region property.
     */
    public void setRegion(@jakarta.annotation.Nullable final String value) {
        this.region = value;
    }
    /**
     * Sets the showOnProfile property value. Whether the owner has chosen to show this connection on their profile.
     * @param value Value to set for the showOnProfile property.
     */
    public void setShowOnProfile(@jakarta.annotation.Nullable final Boolean value) {
        this.showOnProfile = value;
    }
    /**
     * Sets the url property value. The url property
     * @param value Value to set for the url property.
     */
    public void setUrl(@jakarta.annotation.Nullable final String value) {
        this.url = value;
    }
    /**
     * Sets the username property value. The username property
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final String value) {
        this.username = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiOwnConnectionConnectedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOwnConnectionConnectedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOwnConnectionConnectedAtMember1}
         */
        private ApiOwnConnectionConnectedAtMember1 apiOwnConnectionConnectedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOwnConnectionConnectedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiOwnConnectionConnectedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOwnConnectionConnectedAt result = new ApiOwnConnectionConnectedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOwnConnectionConnectedAtMember1(new ApiOwnConnectionConnectedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOwnConnection_connectedAtMember1 property value. Composed type representation for type {@link ApiOwnConnectionConnectedAtMember1}
         * @return a {@link ApiOwnConnectionConnectedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOwnConnectionConnectedAtMember1 getApiOwnConnectionConnectedAtMember1() {
            return this.apiOwnConnectionConnectedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOwnConnectionConnectedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOwnConnectionConnectedAtMember1());
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
                writer.writeObjectValue(null, this.getApiOwnConnectionConnectedAtMember1());
            }
        }
        /**
         * Sets the ApiOwnConnection_connectedAtMember1 property value. Composed type representation for type {@link ApiOwnConnectionConnectedAtMember1}
         * @param value Value to set for the ApiOwnConnection_connectedAtMember1 property.
         */
        public void setApiOwnConnectionConnectedAtMember1(@jakarta.annotation.Nullable final ApiOwnConnectionConnectedAtMember1 value) {
            this.apiOwnConnectionConnectedAtMember1 = value;
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
