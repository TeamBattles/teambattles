package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Rounds, nodes, and participant display data.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentBracket implements Parsable {
    /**
     * Participant ID -&gt; { name, avatarUrl, seed } display map.
     */
    private TournamentBracketDisplay display;
    /**
     * Participant IDs currently disqualified.
     */
    private java.util.List<String> disqualified;
    /**
     * Grand-final advantage rule, copied verbatim from the tournament&apos;s `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
     */
    private TournamentGrandFinalAdvantage grandFinalAdvantage;
    /**
     * Bracket node documents (slots, results, and links).
     */
    private java.util.List<TournamentBracketNodes> nodes;
    /**
     * Round documents, ordered by round number ascending.
     */
    private java.util.List<TournamentBracketRounds> rounds;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentBracket}
     */
    @jakarta.annotation.Nonnull
    public static TournamentBracket createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentBracket();
    }
    /**
     * Gets the display property value. Participant ID -&gt; { name, avatarUrl, seed } display map.
     * @return a {@link TournamentBracketDisplay}
     */
    @jakarta.annotation.Nullable
    public TournamentBracketDisplay getDisplay() {
        return this.display;
    }
    /**
     * Gets the disqualified property value. Participant IDs currently disqualified.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getDisqualified() {
        return this.disqualified;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("display", (n) -> { this.setDisplay(n.getObjectValue(TournamentBracketDisplay::createFromDiscriminatorValue)); });
        deserializerMap.put("disqualified", (n) -> { this.setDisqualified(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("grandFinalAdvantage", (n) -> { this.setGrandFinalAdvantage(n.getObjectValue(TournamentGrandFinalAdvantage::createFromDiscriminatorValue)); });
        deserializerMap.put("nodes", (n) -> { this.setNodes(n.getCollectionOfObjectValues(TournamentBracketNodes::createFromDiscriminatorValue)); });
        deserializerMap.put("rounds", (n) -> { this.setRounds(n.getCollectionOfObjectValues(TournamentBracketRounds::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the grandFinalAdvantage property value. Grand-final advantage rule, copied verbatim from the tournament&apos;s `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
     * @return a {@link TournamentGrandFinalAdvantage}
     */
    @jakarta.annotation.Nullable
    public TournamentGrandFinalAdvantage getGrandFinalAdvantage() {
        return this.grandFinalAdvantage;
    }
    /**
     * Gets the nodes property value. Bracket node documents (slots, results, and links).
     * @return a {@link java.util.List<TournamentBracketNodes>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentBracketNodes> getNodes() {
        return this.nodes;
    }
    /**
     * Gets the rounds property value. Round documents, ordered by round number ascending.
     * @return a {@link java.util.List<TournamentBracketRounds>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentBracketRounds> getRounds() {
        return this.rounds;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("display", this.getDisplay());
        writer.writeCollectionOfPrimitiveValues("disqualified", this.getDisqualified());
        writer.writeObjectValue("grandFinalAdvantage", this.getGrandFinalAdvantage());
        writer.writeCollectionOfObjectValues("nodes", this.getNodes());
        writer.writeCollectionOfObjectValues("rounds", this.getRounds());
    }
    /**
     * Sets the display property value. Participant ID -&gt; { name, avatarUrl, seed } display map.
     * @param value Value to set for the display property.
     */
    public void setDisplay(@jakarta.annotation.Nullable final TournamentBracketDisplay value) {
        this.display = value;
    }
    /**
     * Sets the disqualified property value. Participant IDs currently disqualified.
     * @param value Value to set for the disqualified property.
     */
    public void setDisqualified(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.disqualified = value;
    }
    /**
     * Sets the grandFinalAdvantage property value. Grand-final advantage rule, copied verbatim from the tournament&apos;s `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
     * @param value Value to set for the grandFinalAdvantage property.
     */
    public void setGrandFinalAdvantage(@jakarta.annotation.Nullable final TournamentGrandFinalAdvantage value) {
        this.grandFinalAdvantage = value;
    }
    /**
     * Sets the nodes property value. Bracket node documents (slots, results, and links).
     * @param value Value to set for the nodes property.
     */
    public void setNodes(@jakarta.annotation.Nullable final java.util.List<TournamentBracketNodes> value) {
        this.nodes = value;
    }
    /**
     * Sets the rounds property value. Round documents, ordered by round number ascending.
     * @param value Value to set for the rounds property.
     */
    public void setRounds(@jakarta.annotation.Nullable final java.util.List<TournamentBracketRounds> value) {
        this.rounds = value;
    }
}
