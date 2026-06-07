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
 * Small API-safe organization summary.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiOrganizationSummary implements Parsable {
    /**
     * The avatarUrl property
     */
    private ApiOrganizationSummaryAvatarUrl avatarUrl;
    /**
     * Organization ID.
     */
    private String id;
    /**
     * Organization name.
     */
    private String name;
    /**
     * The slug property
     */
    private ApiOrganizationSummarySlug slug;
    /**
     * The tag property
     */
    private ApiOrganizationSummaryTag tag;
    /**
     * Public profile visibility setting.
     */
    private ProfileVisibility visibility;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiOrganizationSummary}
     */
    @jakarta.annotation.Nonnull
    public static ApiOrganizationSummary createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiOrganizationSummary();
    }
    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return a {@link ApiOrganizationSummaryAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationSummaryAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiOrganizationSummaryAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getObjectValue(ApiOrganizationSummarySlug::createFromDiscriminatorValue)); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getObjectValue(ApiOrganizationSummaryTag::createFromDiscriminatorValue)); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(ProfileVisibility::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Organization ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the name property value. Organization name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the slug property value. The slug property
     * @return a {@link ApiOrganizationSummarySlug}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationSummarySlug getSlug() {
        return this.slug;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link ApiOrganizationSummaryTag}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationSummaryTag getTag() {
        return this.tag;
    }
    /**
     * Gets the visibility property value. Public profile visibility setting.
     * @return a {@link ProfileVisibility}
     */
    @jakarta.annotation.Nullable
    public ProfileVisibility getVisibility() {
        return this.visibility;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("name", this.getName());
        writer.writeObjectValue("slug", this.getSlug());
        writer.writeObjectValue("tag", this.getTag());
        writer.writeEnumValue("visibility", this.getVisibility());
    }
    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiOrganizationSummaryAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the id property value. Organization ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the name property value. Organization name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the slug property value. The slug property
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final ApiOrganizationSummarySlug value) {
        this.slug = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final ApiOrganizationSummaryTag value) {
        this.tag = value;
    }
    /**
     * Sets the visibility property value. Public profile visibility setting.
     * @param value Value to set for the visibility property.
     */
    public void setVisibility(@jakarta.annotation.Nullable final ProfileVisibility value) {
        this.visibility = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiOrganizationSummaryAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationSummaryAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationSummaryAvatarUrlMember1}
         */
        private ApiOrganizationSummaryAvatarUrlMember1 apiOrganizationSummaryAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationSummaryAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationSummaryAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationSummaryAvatarUrl result = new ApiOrganizationSummaryAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationSummaryAvatarUrlMember1(new ApiOrganizationSummaryAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationSummary_avatarUrlMember1 property value. Composed type representation for type {@link ApiOrganizationSummaryAvatarUrlMember1}
         * @return a {@link ApiOrganizationSummaryAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationSummaryAvatarUrlMember1 getApiOrganizationSummaryAvatarUrlMember1() {
            return this.apiOrganizationSummaryAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationSummaryAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationSummaryAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationSummaryAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiOrganizationSummary_avatarUrlMember1 property value. Composed type representation for type {@link ApiOrganizationSummaryAvatarUrlMember1}
         * @param value Value to set for the ApiOrganizationSummary_avatarUrlMember1 property.
         */
        public void setApiOrganizationSummaryAvatarUrlMember1(@jakarta.annotation.Nullable final ApiOrganizationSummaryAvatarUrlMember1 value) {
            this.apiOrganizationSummaryAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiOrganizationSummarySlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationSummarySlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationSummarySlugMember1}
         */
        private ApiOrganizationSummarySlugMember1 apiOrganizationSummarySlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationSummarySlug}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationSummarySlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationSummarySlug result = new ApiOrganizationSummarySlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationSummarySlugMember1(new ApiOrganizationSummarySlugMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationSummary_slugMember1 property value. Composed type representation for type {@link ApiOrganizationSummarySlugMember1}
         * @return a {@link ApiOrganizationSummarySlugMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationSummarySlugMember1 getApiOrganizationSummarySlugMember1() {
            return this.apiOrganizationSummarySlugMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationSummarySlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationSummarySlugMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationSummarySlugMember1());
            }
        }
        /**
         * Sets the ApiOrganizationSummary_slugMember1 property value. Composed type representation for type {@link ApiOrganizationSummarySlugMember1}
         * @param value Value to set for the ApiOrganizationSummary_slugMember1 property.
         */
        public void setApiOrganizationSummarySlugMember1(@jakarta.annotation.Nullable final ApiOrganizationSummarySlugMember1 value) {
            this.apiOrganizationSummarySlugMember1 = value;
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
     * Composed type wrapper for classes {@link ApiOrganizationSummaryTagMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationSummaryTag implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationSummaryTagMember1}
         */
        private ApiOrganizationSummaryTagMember1 apiOrganizationSummaryTagMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationSummaryTag}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationSummaryTag createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationSummaryTag result = new ApiOrganizationSummaryTag();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationSummaryTagMember1(new ApiOrganizationSummaryTagMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationSummary_tagMember1 property value. Composed type representation for type {@link ApiOrganizationSummaryTagMember1}
         * @return a {@link ApiOrganizationSummaryTagMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationSummaryTagMember1 getApiOrganizationSummaryTagMember1() {
            return this.apiOrganizationSummaryTagMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationSummaryTagMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationSummaryTagMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationSummaryTagMember1());
            }
        }
        /**
         * Sets the ApiOrganizationSummary_tagMember1 property value. Composed type representation for type {@link ApiOrganizationSummaryTagMember1}
         * @param value Value to set for the ApiOrganizationSummary_tagMember1 property.
         */
        public void setApiOrganizationSummaryTagMember1(@jakarta.annotation.Nullable final ApiOrganizationSummaryTagMember1 value) {
            this.apiOrganizationSummaryTagMember1 = value;
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
