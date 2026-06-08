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
    private ApiOwnConnectionGamingPlatform gamingPlatform;
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
    private ApiOwnConnectionRegion region;
    /**
     * Whether the owner has chosen to show this connection on their profile.
     */
    private Boolean showOnProfile;
    /**
     * The url property
     */
    private ApiOwnConnectionUrl url;
    /**
     * The username property
     */
    private ApiOwnConnectionUsername username;
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
        deserializerMap.put("gamingPlatform", (n) -> { this.setGamingPlatform(n.getObjectValue(ApiOwnConnectionGamingPlatform::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isPrimary", (n) -> { this.setIsPrimary(n.getBooleanValue()); });
        deserializerMap.put("isSelfReported", (n) -> { this.setIsSelfReported(n.getBooleanValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getStringValue()); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getObjectValue(ApiOwnConnectionRegion::createFromDiscriminatorValue)); });
        deserializerMap.put("showOnProfile", (n) -> { this.setShowOnProfile(n.getBooleanValue()); });
        deserializerMap.put("url", (n) -> { this.setUrl(n.getObjectValue(ApiOwnConnectionUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getObjectValue(ApiOwnConnectionUsername::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gamingPlatform property value. Gaming platform (e.g. pc / console), when set.
     * @return a {@link ApiOwnConnectionGamingPlatform}
     */
    @jakarta.annotation.Nullable
    public ApiOwnConnectionGamingPlatform getGamingPlatform() {
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
     * @return a {@link ApiOwnConnectionRegion}
     */
    @jakarta.annotation.Nullable
    public ApiOwnConnectionRegion getRegion() {
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
     * @return a {@link ApiOwnConnectionUrl}
     */
    @jakarta.annotation.Nullable
    public ApiOwnConnectionUrl getUrl() {
        return this.url;
    }
    /**
     * Gets the username property value. The username property
     * @return a {@link ApiOwnConnectionUsername}
     */
    @jakarta.annotation.Nullable
    public ApiOwnConnectionUsername getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("connectedAt", this.getConnectedAt());
        writer.writeObjectValue("gamingPlatform", this.getGamingPlatform());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isPrimary", this.getIsPrimary());
        writer.writeBooleanValue("isSelfReported", this.getIsSelfReported());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeStringValue("platform", this.getPlatform());
        writer.writeObjectValue("region", this.getRegion());
        writer.writeBooleanValue("showOnProfile", this.getShowOnProfile());
        writer.writeObjectValue("url", this.getUrl());
        writer.writeObjectValue("username", this.getUsername());
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
    public void setGamingPlatform(@jakarta.annotation.Nullable final ApiOwnConnectionGamingPlatform value) {
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
    public void setRegion(@jakarta.annotation.Nullable final ApiOwnConnectionRegion value) {
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
    public void setUrl(@jakarta.annotation.Nullable final ApiOwnConnectionUrl value) {
        this.url = value;
    }
    /**
     * Sets the username property value. The username property
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final ApiOwnConnectionUsername value) {
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
    /**
     * Composed type wrapper for classes {@link ApiOwnConnectionGamingPlatformMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOwnConnectionGamingPlatform implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOwnConnectionGamingPlatformMember1}
         */
        private ApiOwnConnectionGamingPlatformMember1 apiOwnConnectionGamingPlatformMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOwnConnectionGamingPlatform}
         */
        @jakarta.annotation.Nonnull
        public static ApiOwnConnectionGamingPlatform createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOwnConnectionGamingPlatform result = new ApiOwnConnectionGamingPlatform();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOwnConnectionGamingPlatformMember1(new ApiOwnConnectionGamingPlatformMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOwnConnection_gamingPlatformMember1 property value. Composed type representation for type {@link ApiOwnConnectionGamingPlatformMember1}
         * @return a {@link ApiOwnConnectionGamingPlatformMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOwnConnectionGamingPlatformMember1 getApiOwnConnectionGamingPlatformMember1() {
            return this.apiOwnConnectionGamingPlatformMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOwnConnectionGamingPlatformMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOwnConnectionGamingPlatformMember1());
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
                writer.writeObjectValue(null, this.getApiOwnConnectionGamingPlatformMember1());
            }
        }
        /**
         * Sets the ApiOwnConnection_gamingPlatformMember1 property value. Composed type representation for type {@link ApiOwnConnectionGamingPlatformMember1}
         * @param value Value to set for the ApiOwnConnection_gamingPlatformMember1 property.
         */
        public void setApiOwnConnectionGamingPlatformMember1(@jakarta.annotation.Nullable final ApiOwnConnectionGamingPlatformMember1 value) {
            this.apiOwnConnectionGamingPlatformMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiOwnConnectionRegionMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOwnConnectionRegion implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOwnConnectionRegionMember1}
         */
        private ApiOwnConnectionRegionMember1 apiOwnConnectionRegionMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOwnConnectionRegion}
         */
        @jakarta.annotation.Nonnull
        public static ApiOwnConnectionRegion createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOwnConnectionRegion result = new ApiOwnConnectionRegion();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOwnConnectionRegionMember1(new ApiOwnConnectionRegionMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOwnConnection_regionMember1 property value. Composed type representation for type {@link ApiOwnConnectionRegionMember1}
         * @return a {@link ApiOwnConnectionRegionMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOwnConnectionRegionMember1 getApiOwnConnectionRegionMember1() {
            return this.apiOwnConnectionRegionMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOwnConnectionRegionMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOwnConnectionRegionMember1());
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
                writer.writeObjectValue(null, this.getApiOwnConnectionRegionMember1());
            }
        }
        /**
         * Sets the ApiOwnConnection_regionMember1 property value. Composed type representation for type {@link ApiOwnConnectionRegionMember1}
         * @param value Value to set for the ApiOwnConnection_regionMember1 property.
         */
        public void setApiOwnConnectionRegionMember1(@jakarta.annotation.Nullable final ApiOwnConnectionRegionMember1 value) {
            this.apiOwnConnectionRegionMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiOwnConnectionUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOwnConnectionUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOwnConnectionUrlMember1}
         */
        private ApiOwnConnectionUrlMember1 apiOwnConnectionUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOwnConnectionUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiOwnConnectionUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOwnConnectionUrl result = new ApiOwnConnectionUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOwnConnectionUrlMember1(new ApiOwnConnectionUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOwnConnection_urlMember1 property value. Composed type representation for type {@link ApiOwnConnectionUrlMember1}
         * @return a {@link ApiOwnConnectionUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOwnConnectionUrlMember1 getApiOwnConnectionUrlMember1() {
            return this.apiOwnConnectionUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOwnConnectionUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOwnConnectionUrlMember1());
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
                writer.writeObjectValue(null, this.getApiOwnConnectionUrlMember1());
            }
        }
        /**
         * Sets the ApiOwnConnection_urlMember1 property value. Composed type representation for type {@link ApiOwnConnectionUrlMember1}
         * @param value Value to set for the ApiOwnConnection_urlMember1 property.
         */
        public void setApiOwnConnectionUrlMember1(@jakarta.annotation.Nullable final ApiOwnConnectionUrlMember1 value) {
            this.apiOwnConnectionUrlMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiOwnConnectionUsernameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOwnConnectionUsername implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOwnConnectionUsernameMember1}
         */
        private ApiOwnConnectionUsernameMember1 apiOwnConnectionUsernameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOwnConnectionUsername}
         */
        @jakarta.annotation.Nonnull
        public static ApiOwnConnectionUsername createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOwnConnectionUsername result = new ApiOwnConnectionUsername();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOwnConnectionUsernameMember1(new ApiOwnConnectionUsernameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOwnConnection_usernameMember1 property value. Composed type representation for type {@link ApiOwnConnectionUsernameMember1}
         * @return a {@link ApiOwnConnectionUsernameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOwnConnectionUsernameMember1 getApiOwnConnectionUsernameMember1() {
            return this.apiOwnConnectionUsernameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOwnConnectionUsernameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOwnConnectionUsernameMember1());
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
                writer.writeObjectValue(null, this.getApiOwnConnectionUsernameMember1());
            }
        }
        /**
         * Sets the ApiOwnConnection_usernameMember1 property value. Composed type representation for type {@link ApiOwnConnectionUsernameMember1}
         * @param value Value to set for the ApiOwnConnection_usernameMember1 property.
         */
        public void setApiOwnConnectionUsernameMember1(@jakarta.annotation.Nullable final ApiOwnConnectionUsernameMember1 value) {
            this.apiOwnConnectionUsernameMember1 = value;
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
