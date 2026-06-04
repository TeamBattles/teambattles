package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MapScoresSeriesScore implements Parsable {
    /**
     * The creatorMapWins property
     */
    private Integer creatorMapWins;
    /**
     * The opponentMapWins property
     */
    private Integer opponentMapWins;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MapScoresSeriesScore}
     */
    @jakarta.annotation.Nonnull
    public static MapScoresSeriesScore createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MapScoresSeriesScore();
    }
    /**
     * Gets the creatorMapWins property value. The creatorMapWins property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCreatorMapWins() {
        return this.creatorMapWins;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("creatorMapWins", (n) -> { this.setCreatorMapWins(n.getIntegerValue()); });
        deserializerMap.put("opponentMapWins", (n) -> { this.setOpponentMapWins(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the opponentMapWins property value. The opponentMapWins property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getOpponentMapWins() {
        return this.opponentMapWins;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("creatorMapWins", this.getCreatorMapWins());
        writer.writeIntegerValue("opponentMapWins", this.getOpponentMapWins());
    }
    /**
     * Sets the creatorMapWins property value. The creatorMapWins property
     * @param value Value to set for the creatorMapWins property.
     */
    public void setCreatorMapWins(@jakarta.annotation.Nullable final Integer value) {
        this.creatorMapWins = value;
    }
    /**
     * Sets the opponentMapWins property value. The opponentMapWins property
     * @param value Value to set for the opponentMapWins property.
     */
    public void setOpponentMapWins(@jakarta.annotation.Nullable final Integer value) {
        this.opponentMapWins = value;
    }
}
