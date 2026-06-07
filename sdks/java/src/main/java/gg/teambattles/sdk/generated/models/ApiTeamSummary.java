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
 * Small API-safe team summary.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiTeamSummary implements Parsable {
    /**
     * The avatarUrl property
     */
    private ApiTeamSummaryAvatarUrl avatarUrl;
    /**
     * Team ID.
     */
    private String id;
    /**
     * Team name.
     */
    private String name;
    /**
     * The slug property
     */
    private ApiTeamSummarySlug slug;
    /**
     * The tag property
     */
    private ApiTeamSummaryTag tag;
    /**
     * Public profile visibility setting.
     */
    private ProfileVisibility visibility;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiTeamSummary}
     */
    @jakarta.annotation.Nonnull
    public static ApiTeamSummary createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiTeamSummary();
    }
    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return a {@link ApiTeamSummaryAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiTeamSummaryAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiTeamSummaryAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getObjectValue(ApiTeamSummarySlug::createFromDiscriminatorValue)); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getObjectValue(ApiTeamSummaryTag::createFromDiscriminatorValue)); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(ProfileVisibility::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Team ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the name property value. Team name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the slug property value. The slug property
     * @return a {@link ApiTeamSummarySlug}
     */
    @jakarta.annotation.Nullable
    public ApiTeamSummarySlug getSlug() {
        return this.slug;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link ApiTeamSummaryTag}
     */
    @jakarta.annotation.Nullable
    public ApiTeamSummaryTag getTag() {
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
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiTeamSummaryAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the id property value. Team ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the name property value. Team name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the slug property value. The slug property
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final ApiTeamSummarySlug value) {
        this.slug = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final ApiTeamSummaryTag value) {
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
     * Composed type wrapper for classes {@link ApiTeamSummaryAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamSummaryAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamSummaryAvatarUrlMember1}
         */
        private ApiTeamSummaryAvatarUrlMember1 apiTeamSummaryAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamSummaryAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamSummaryAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamSummaryAvatarUrl result = new ApiTeamSummaryAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamSummaryAvatarUrlMember1(new ApiTeamSummaryAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamSummary_avatarUrlMember1 property value. Composed type representation for type {@link ApiTeamSummaryAvatarUrlMember1}
         * @return a {@link ApiTeamSummaryAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamSummaryAvatarUrlMember1 getApiTeamSummaryAvatarUrlMember1() {
            return this.apiTeamSummaryAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamSummaryAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamSummaryAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiTeamSummaryAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiTeamSummary_avatarUrlMember1 property value. Composed type representation for type {@link ApiTeamSummaryAvatarUrlMember1}
         * @param value Value to set for the ApiTeamSummary_avatarUrlMember1 property.
         */
        public void setApiTeamSummaryAvatarUrlMember1(@jakarta.annotation.Nullable final ApiTeamSummaryAvatarUrlMember1 value) {
            this.apiTeamSummaryAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamSummarySlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamSummarySlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamSummarySlugMember1}
         */
        private ApiTeamSummarySlugMember1 apiTeamSummarySlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamSummarySlug}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamSummarySlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamSummarySlug result = new ApiTeamSummarySlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamSummarySlugMember1(new ApiTeamSummarySlugMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamSummary_slugMember1 property value. Composed type representation for type {@link ApiTeamSummarySlugMember1}
         * @return a {@link ApiTeamSummarySlugMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamSummarySlugMember1 getApiTeamSummarySlugMember1() {
            return this.apiTeamSummarySlugMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamSummarySlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamSummarySlugMember1());
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
                writer.writeObjectValue(null, this.getApiTeamSummarySlugMember1());
            }
        }
        /**
         * Sets the ApiTeamSummary_slugMember1 property value. Composed type representation for type {@link ApiTeamSummarySlugMember1}
         * @param value Value to set for the ApiTeamSummary_slugMember1 property.
         */
        public void setApiTeamSummarySlugMember1(@jakarta.annotation.Nullable final ApiTeamSummarySlugMember1 value) {
            this.apiTeamSummarySlugMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamSummaryTagMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamSummaryTag implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamSummaryTagMember1}
         */
        private ApiTeamSummaryTagMember1 apiTeamSummaryTagMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamSummaryTag}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamSummaryTag createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamSummaryTag result = new ApiTeamSummaryTag();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamSummaryTagMember1(new ApiTeamSummaryTagMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamSummary_tagMember1 property value. Composed type representation for type {@link ApiTeamSummaryTagMember1}
         * @return a {@link ApiTeamSummaryTagMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamSummaryTagMember1 getApiTeamSummaryTagMember1() {
            return this.apiTeamSummaryTagMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamSummaryTagMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamSummaryTagMember1());
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
                writer.writeObjectValue(null, this.getApiTeamSummaryTagMember1());
            }
        }
        /**
         * Sets the ApiTeamSummary_tagMember1 property value. Composed type representation for type {@link ApiTeamSummaryTagMember1}
         * @param value Value to set for the ApiTeamSummary_tagMember1 property.
         */
        public void setApiTeamSummaryTagMember1(@jakarta.annotation.Nullable final ApiTeamSummaryTagMember1 value) {
            this.apiTeamSummaryTagMember1 = value;
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
