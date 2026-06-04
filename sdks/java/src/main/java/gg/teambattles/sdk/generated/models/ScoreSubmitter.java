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
 * Identity of the captain who submitted a score.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ScoreSubmitter implements Parsable {
    /**
     * The name property
     */
    private ScoreSubmitterName name;
    /**
     * The teamId property
     */
    private String teamId;
    /**
     * The userId property
     */
    private String userId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ScoreSubmitter}
     */
    @jakarta.annotation.Nonnull
    public static ScoreSubmitter createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ScoreSubmitter();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("name", (n) -> { this.setName(n.getObjectValue(ScoreSubmitterName::createFromDiscriminatorValue)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the name property value. The name property
     * @return a {@link ScoreSubmitterName}
     */
    @jakarta.annotation.Nullable
    public ScoreSubmitterName getName() {
        return this.name;
    }
    /**
     * Gets the teamId property value. The teamId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the userId property value. The userId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("name", this.getName());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("userId", this.getUserId());
    }
    /**
     * Sets the name property value. The name property
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final ScoreSubmitterName value) {
        this.name = value;
    }
    /**
     * Sets the teamId property value. The teamId property
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the userId property value. The userId property
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
    }
    /**
     * Composed type wrapper for classes {@link ScoreSubmitterNameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ScoreSubmitterName implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ScoreSubmitterNameMember1}
         */
        private ScoreSubmitterNameMember1 scoreSubmitterNameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ScoreSubmitterName}
         */
        @jakarta.annotation.Nonnull
        public static ScoreSubmitterName createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ScoreSubmitterName result = new ScoreSubmitterName();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setScoreSubmitterNameMember1(new ScoreSubmitterNameMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getScoreSubmitterNameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getScoreSubmitterNameMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the ScoreSubmitter_nameMember1 property value. Composed type representation for type {@link ScoreSubmitterNameMember1}
         * @return a {@link ScoreSubmitterNameMember1}
         */
        @jakarta.annotation.Nullable
        public ScoreSubmitterNameMember1 getScoreSubmitterNameMember1() {
            return this.scoreSubmitterNameMember1;
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
                writer.writeObjectValue(null, this.getScoreSubmitterNameMember1());
            }
        }
        /**
         * Sets the ScoreSubmitter_nameMember1 property value. Composed type representation for type {@link ScoreSubmitterNameMember1}
         * @param value Value to set for the ScoreSubmitter_nameMember1 property.
         */
        public void setScoreSubmitterNameMember1(@jakarta.annotation.Nullable final ScoreSubmitterNameMember1 value) {
            this.scoreSubmitterNameMember1 = value;
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
