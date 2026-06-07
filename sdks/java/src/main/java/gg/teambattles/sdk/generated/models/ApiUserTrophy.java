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
 * API-safe user trophy. Event linkage fields are intentionally omitted.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiUserTrophy implements Parsable {
    /**
     * The awardedAt property
     */
    private ApiUserTrophyAwardedAt awardedAt;
    /**
     * The description property
     */
    private ApiUserTrophyDescription description;
    /**
     * The iconUrl property
     */
    private ApiUserTrophyIconUrl iconUrl;
    /**
     * Trophy award ID.
     */
    private String id;
    /**
     * The rarity property
     */
    private ApiUserTrophyRarity rarity;
    /**
     * The title property
     */
    private ApiUserTrophyTitle title;
    /**
     * Trophy definition ID.
     */
    private String trophyId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiUserTrophy}
     */
    @jakarta.annotation.Nonnull
    public static ApiUserTrophy createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiUserTrophy();
    }
    /**
     * Gets the awardedAt property value. The awardedAt property
     * @return a {@link ApiUserTrophyAwardedAt}
     */
    @jakarta.annotation.Nullable
    public ApiUserTrophyAwardedAt getAwardedAt() {
        return this.awardedAt;
    }
    /**
     * Gets the description property value. The description property
     * @return a {@link ApiUserTrophyDescription}
     */
    @jakarta.annotation.Nullable
    public ApiUserTrophyDescription getDescription() {
        return this.description;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("awardedAt", (n) -> { this.setAwardedAt(n.getObjectValue(ApiUserTrophyAwardedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getObjectValue(ApiUserTrophyDescription::createFromDiscriminatorValue)); });
        deserializerMap.put("iconUrl", (n) -> { this.setIconUrl(n.getObjectValue(ApiUserTrophyIconUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("rarity", (n) -> { this.setRarity(n.getObjectValue(ApiUserTrophyRarity::createFromDiscriminatorValue)); });
        deserializerMap.put("title", (n) -> { this.setTitle(n.getObjectValue(ApiUserTrophyTitle::createFromDiscriminatorValue)); });
        deserializerMap.put("trophyId", (n) -> { this.setTrophyId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the iconUrl property value. The iconUrl property
     * @return a {@link ApiUserTrophyIconUrl}
     */
    @jakarta.annotation.Nullable
    public ApiUserTrophyIconUrl getIconUrl() {
        return this.iconUrl;
    }
    /**
     * Gets the id property value. Trophy award ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the rarity property value. The rarity property
     * @return a {@link ApiUserTrophyRarity}
     */
    @jakarta.annotation.Nullable
    public ApiUserTrophyRarity getRarity() {
        return this.rarity;
    }
    /**
     * Gets the title property value. The title property
     * @return a {@link ApiUserTrophyTitle}
     */
    @jakarta.annotation.Nullable
    public ApiUserTrophyTitle getTitle() {
        return this.title;
    }
    /**
     * Gets the trophyId property value. Trophy definition ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTrophyId() {
        return this.trophyId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("awardedAt", this.getAwardedAt());
        writer.writeObjectValue("description", this.getDescription());
        writer.writeObjectValue("iconUrl", this.getIconUrl());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("rarity", this.getRarity());
        writer.writeObjectValue("title", this.getTitle());
        writer.writeStringValue("trophyId", this.getTrophyId());
    }
    /**
     * Sets the awardedAt property value. The awardedAt property
     * @param value Value to set for the awardedAt property.
     */
    public void setAwardedAt(@jakarta.annotation.Nullable final ApiUserTrophyAwardedAt value) {
        this.awardedAt = value;
    }
    /**
     * Sets the description property value. The description property
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final ApiUserTrophyDescription value) {
        this.description = value;
    }
    /**
     * Sets the iconUrl property value. The iconUrl property
     * @param value Value to set for the iconUrl property.
     */
    public void setIconUrl(@jakarta.annotation.Nullable final ApiUserTrophyIconUrl value) {
        this.iconUrl = value;
    }
    /**
     * Sets the id property value. Trophy award ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the rarity property value. The rarity property
     * @param value Value to set for the rarity property.
     */
    public void setRarity(@jakarta.annotation.Nullable final ApiUserTrophyRarity value) {
        this.rarity = value;
    }
    /**
     * Sets the title property value. The title property
     * @param value Value to set for the title property.
     */
    public void setTitle(@jakarta.annotation.Nullable final ApiUserTrophyTitle value) {
        this.title = value;
    }
    /**
     * Sets the trophyId property value. Trophy definition ID.
     * @param value Value to set for the trophyId property.
     */
    public void setTrophyId(@jakarta.annotation.Nullable final String value) {
        this.trophyId = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiUserTrophyAwardedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTrophyAwardedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTrophyAwardedAtMember1}
         */
        private ApiUserTrophyAwardedAtMember1 apiUserTrophyAwardedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTrophyAwardedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTrophyAwardedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTrophyAwardedAt result = new ApiUserTrophyAwardedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTrophyAwardedAtMember1(new ApiUserTrophyAwardedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTrophy_awardedAtMember1 property value. Composed type representation for type {@link ApiUserTrophyAwardedAtMember1}
         * @return a {@link ApiUserTrophyAwardedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTrophyAwardedAtMember1 getApiUserTrophyAwardedAtMember1() {
            return this.apiUserTrophyAwardedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTrophyAwardedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTrophyAwardedAtMember1());
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
                writer.writeObjectValue(null, this.getApiUserTrophyAwardedAtMember1());
            }
        }
        /**
         * Sets the ApiUserTrophy_awardedAtMember1 property value. Composed type representation for type {@link ApiUserTrophyAwardedAtMember1}
         * @param value Value to set for the ApiUserTrophy_awardedAtMember1 property.
         */
        public void setApiUserTrophyAwardedAtMember1(@jakarta.annotation.Nullable final ApiUserTrophyAwardedAtMember1 value) {
            this.apiUserTrophyAwardedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserTrophyDescriptionMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTrophyDescription implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTrophyDescriptionMember1}
         */
        private ApiUserTrophyDescriptionMember1 apiUserTrophyDescriptionMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTrophyDescription}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTrophyDescription createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTrophyDescription result = new ApiUserTrophyDescription();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTrophyDescriptionMember1(new ApiUserTrophyDescriptionMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTrophy_descriptionMember1 property value. Composed type representation for type {@link ApiUserTrophyDescriptionMember1}
         * @return a {@link ApiUserTrophyDescriptionMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTrophyDescriptionMember1 getApiUserTrophyDescriptionMember1() {
            return this.apiUserTrophyDescriptionMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTrophyDescriptionMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTrophyDescriptionMember1());
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
                writer.writeObjectValue(null, this.getApiUserTrophyDescriptionMember1());
            }
        }
        /**
         * Sets the ApiUserTrophy_descriptionMember1 property value. Composed type representation for type {@link ApiUserTrophyDescriptionMember1}
         * @param value Value to set for the ApiUserTrophy_descriptionMember1 property.
         */
        public void setApiUserTrophyDescriptionMember1(@jakarta.annotation.Nullable final ApiUserTrophyDescriptionMember1 value) {
            this.apiUserTrophyDescriptionMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserTrophyIconUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTrophyIconUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTrophyIconUrlMember1}
         */
        private ApiUserTrophyIconUrlMember1 apiUserTrophyIconUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTrophyIconUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTrophyIconUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTrophyIconUrl result = new ApiUserTrophyIconUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTrophyIconUrlMember1(new ApiUserTrophyIconUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTrophy_iconUrlMember1 property value. Composed type representation for type {@link ApiUserTrophyIconUrlMember1}
         * @return a {@link ApiUserTrophyIconUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTrophyIconUrlMember1 getApiUserTrophyIconUrlMember1() {
            return this.apiUserTrophyIconUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTrophyIconUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTrophyIconUrlMember1());
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
                writer.writeObjectValue(null, this.getApiUserTrophyIconUrlMember1());
            }
        }
        /**
         * Sets the ApiUserTrophy_iconUrlMember1 property value. Composed type representation for type {@link ApiUserTrophyIconUrlMember1}
         * @param value Value to set for the ApiUserTrophy_iconUrlMember1 property.
         */
        public void setApiUserTrophyIconUrlMember1(@jakarta.annotation.Nullable final ApiUserTrophyIconUrlMember1 value) {
            this.apiUserTrophyIconUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserTrophyRarityMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTrophyRarity implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTrophyRarityMember1}
         */
        private ApiUserTrophyRarityMember1 apiUserTrophyRarityMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTrophyRarity}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTrophyRarity createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTrophyRarity result = new ApiUserTrophyRarity();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTrophyRarityMember1(new ApiUserTrophyRarityMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTrophy_rarityMember1 property value. Composed type representation for type {@link ApiUserTrophyRarityMember1}
         * @return a {@link ApiUserTrophyRarityMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTrophyRarityMember1 getApiUserTrophyRarityMember1() {
            return this.apiUserTrophyRarityMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTrophyRarityMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTrophyRarityMember1());
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
                writer.writeObjectValue(null, this.getApiUserTrophyRarityMember1());
            }
        }
        /**
         * Sets the ApiUserTrophy_rarityMember1 property value. Composed type representation for type {@link ApiUserTrophyRarityMember1}
         * @param value Value to set for the ApiUserTrophy_rarityMember1 property.
         */
        public void setApiUserTrophyRarityMember1(@jakarta.annotation.Nullable final ApiUserTrophyRarityMember1 value) {
            this.apiUserTrophyRarityMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserTrophyTitleMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTrophyTitle implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTrophyTitleMember1}
         */
        private ApiUserTrophyTitleMember1 apiUserTrophyTitleMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTrophyTitle}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTrophyTitle createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTrophyTitle result = new ApiUserTrophyTitle();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTrophyTitleMember1(new ApiUserTrophyTitleMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTrophy_titleMember1 property value. Composed type representation for type {@link ApiUserTrophyTitleMember1}
         * @return a {@link ApiUserTrophyTitleMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTrophyTitleMember1 getApiUserTrophyTitleMember1() {
            return this.apiUserTrophyTitleMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTrophyTitleMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTrophyTitleMember1());
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
                writer.writeObjectValue(null, this.getApiUserTrophyTitleMember1());
            }
        }
        /**
         * Sets the ApiUserTrophy_titleMember1 property value. Composed type representation for type {@link ApiUserTrophyTitleMember1}
         * @param value Value to set for the ApiUserTrophy_titleMember1 property.
         */
        public void setApiUserTrophyTitleMember1(@jakarta.annotation.Nullable final ApiUserTrophyTitleMember1 value) {
            this.apiUserTrophyTitleMember1 = value;
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
