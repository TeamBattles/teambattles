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
 * API-safe public account connection.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiUserConnection implements Parsable {
    /**
     * The connectedAt property
     */
    private ApiUserConnectionConnectedAt connectedAt;
    /**
     * Connection ID.
     */
    private String id;
    /**
     * The isPrimary property
     */
    private Boolean isPrimary;
    /**
     * The isVerified property
     */
    private Boolean isVerified;
    /**
     * Connected platform.
     */
    private String platform;
    /**
     * The url property
     */
    private ApiUserConnectionUrl url;
    /**
     * The username property
     */
    private ApiUserConnectionUsername username;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiUserConnection}
     */
    @jakarta.annotation.Nonnull
    public static ApiUserConnection createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiUserConnection();
    }
    /**
     * Gets the connectedAt property value. The connectedAt property
     * @return a {@link ApiUserConnectionConnectedAt}
     */
    @jakarta.annotation.Nullable
    public ApiUserConnectionConnectedAt getConnectedAt() {
        return this.connectedAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("connectedAt", (n) -> { this.setConnectedAt(n.getObjectValue(ApiUserConnectionConnectedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isPrimary", (n) -> { this.setIsPrimary(n.getBooleanValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getStringValue()); });
        deserializerMap.put("url", (n) -> { this.setUrl(n.getObjectValue(ApiUserConnectionUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getObjectValue(ApiUserConnectionUsername::createFromDiscriminatorValue)); });
        return deserializerMap;
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
     * Gets the url property value. The url property
     * @return a {@link ApiUserConnectionUrl}
     */
    @jakarta.annotation.Nullable
    public ApiUserConnectionUrl getUrl() {
        return this.url;
    }
    /**
     * Gets the username property value. The username property
     * @return a {@link ApiUserConnectionUsername}
     */
    @jakarta.annotation.Nullable
    public ApiUserConnectionUsername getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("connectedAt", this.getConnectedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isPrimary", this.getIsPrimary());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeStringValue("platform", this.getPlatform());
        writer.writeObjectValue("url", this.getUrl());
        writer.writeObjectValue("username", this.getUsername());
    }
    /**
     * Sets the connectedAt property value. The connectedAt property
     * @param value Value to set for the connectedAt property.
     */
    public void setConnectedAt(@jakarta.annotation.Nullable final ApiUserConnectionConnectedAt value) {
        this.connectedAt = value;
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
     * Sets the url property value. The url property
     * @param value Value to set for the url property.
     */
    public void setUrl(@jakarta.annotation.Nullable final ApiUserConnectionUrl value) {
        this.url = value;
    }
    /**
     * Sets the username property value. The username property
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final ApiUserConnectionUsername value) {
        this.username = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiUserConnectionConnectedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserConnectionConnectedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserConnectionConnectedAtMember1}
         */
        private ApiUserConnectionConnectedAtMember1 apiUserConnectionConnectedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserConnectionConnectedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserConnectionConnectedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserConnectionConnectedAt result = new ApiUserConnectionConnectedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserConnectionConnectedAtMember1(new ApiUserConnectionConnectedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserConnection_connectedAtMember1 property value. Composed type representation for type {@link ApiUserConnectionConnectedAtMember1}
         * @return a {@link ApiUserConnectionConnectedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserConnectionConnectedAtMember1 getApiUserConnectionConnectedAtMember1() {
            return this.apiUserConnectionConnectedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserConnectionConnectedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserConnectionConnectedAtMember1());
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
                writer.writeObjectValue(null, this.getApiUserConnectionConnectedAtMember1());
            }
        }
        /**
         * Sets the ApiUserConnection_connectedAtMember1 property value. Composed type representation for type {@link ApiUserConnectionConnectedAtMember1}
         * @param value Value to set for the ApiUserConnection_connectedAtMember1 property.
         */
        public void setApiUserConnectionConnectedAtMember1(@jakarta.annotation.Nullable final ApiUserConnectionConnectedAtMember1 value) {
            this.apiUserConnectionConnectedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserConnectionUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserConnectionUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserConnectionUrlMember1}
         */
        private ApiUserConnectionUrlMember1 apiUserConnectionUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserConnectionUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserConnectionUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserConnectionUrl result = new ApiUserConnectionUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserConnectionUrlMember1(new ApiUserConnectionUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserConnection_urlMember1 property value. Composed type representation for type {@link ApiUserConnectionUrlMember1}
         * @return a {@link ApiUserConnectionUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserConnectionUrlMember1 getApiUserConnectionUrlMember1() {
            return this.apiUserConnectionUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserConnectionUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserConnectionUrlMember1());
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
                writer.writeObjectValue(null, this.getApiUserConnectionUrlMember1());
            }
        }
        /**
         * Sets the ApiUserConnection_urlMember1 property value. Composed type representation for type {@link ApiUserConnectionUrlMember1}
         * @param value Value to set for the ApiUserConnection_urlMember1 property.
         */
        public void setApiUserConnectionUrlMember1(@jakarta.annotation.Nullable final ApiUserConnectionUrlMember1 value) {
            this.apiUserConnectionUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserConnectionUsernameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserConnectionUsername implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserConnectionUsernameMember1}
         */
        private ApiUserConnectionUsernameMember1 apiUserConnectionUsernameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserConnectionUsername}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserConnectionUsername createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserConnectionUsername result = new ApiUserConnectionUsername();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserConnectionUsernameMember1(new ApiUserConnectionUsernameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserConnection_usernameMember1 property value. Composed type representation for type {@link ApiUserConnectionUsernameMember1}
         * @return a {@link ApiUserConnectionUsernameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserConnectionUsernameMember1 getApiUserConnectionUsernameMember1() {
            return this.apiUserConnectionUsernameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserConnectionUsernameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserConnectionUsernameMember1());
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
                writer.writeObjectValue(null, this.getApiUserConnectionUsernameMember1());
            }
        }
        /**
         * Sets the ApiUserConnection_usernameMember1 property value. Composed type representation for type {@link ApiUserConnectionUsernameMember1}
         * @param value Value to set for the ApiUserConnection_usernameMember1 property.
         */
        public void setApiUserConnectionUsernameMember1(@jakarta.annotation.Nullable final ApiUserConnectionUsernameMember1 value) {
            this.apiUserConnectionUsernameMember1 = value;
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
