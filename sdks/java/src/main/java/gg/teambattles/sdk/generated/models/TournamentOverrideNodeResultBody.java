package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Bracket node result override payload.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentOverrideNodeResultBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Score for the node&apos;s first entrant.
     */
    private Integer score1;
    /**
     * Score for the node&apos;s second entrant.
     */
    private Integer score2;
    /**
     * Instantiates a new {@link TournamentOverrideNodeResultBody} and sets the default values.
     */
    public TournamentOverrideNodeResultBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentOverrideNodeResultBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentOverrideNodeResultBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentOverrideNodeResultBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("score1", (n) -> { this.setScore1(n.getIntegerValue()); });
        deserializerMap.put("score2", (n) -> { this.setScore2(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the score1 property value. Score for the node&apos;s first entrant.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getScore1() {
        return this.score1;
    }
    /**
     * Gets the score2 property value. Score for the node&apos;s second entrant.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getScore2() {
        return this.score2;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("score1", this.getScore1());
        writer.writeIntegerValue("score2", this.getScore2());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the score1 property value. Score for the node&apos;s first entrant.
     * @param value Value to set for the score1 property.
     */
    public void setScore1(@jakarta.annotation.Nullable final Integer value) {
        this.score1 = value;
    }
    /**
     * Sets the score2 property value. Score for the node&apos;s second entrant.
     * @param value Value to set for the score2 property.
     */
    public void setScore2(@jakarta.annotation.Nullable final Integer value) {
        this.score2 = value;
    }
}
