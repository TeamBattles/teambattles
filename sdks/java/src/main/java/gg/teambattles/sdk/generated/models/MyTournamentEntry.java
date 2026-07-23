package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The API key owner&apos;s own state in one tournament.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentEntry implements Parsable {
    /**
     * Every team of the tournament&apos;s game that the caller may act for - captain, co-captain, or owner of the team&apos;s organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
     */
    private java.util.List<MyTournamentActableTeam> actableTeams;
    /**
     * The caller&apos;s free-agent row, or null if they have never joined this tournament&apos;s pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
     */
    private MyTournamentFreeAgent freeAgent;
    /**
     * Every invite addressed to an actable team, in all four states.
     */
    private java.util.List<MyTournamentInvite> invites;
    /**
     * Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
     */
    private java.util.List<MyTournamentOffer> offers;
    /**
     * Every entry belonging to one of the caller&apos;s teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
     */
    private java.util.List<MyTournamentParticipant> participants;
    /**
     * True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
     */
    private Boolean requiredConnectionMissing;
    /**
     * Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
     */
    private java.util.List<MyTournamentRosterEntry> rosterEntries;
    /**
     * The tournament&apos;s canonical slug. Echoed because the request may have used a stale one that still resolves.
     */
    private String slug;
    /**
     * Tournament ID.
     */
    private String tournamentId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentEntry}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentEntry();
    }
    /**
     * Gets the actableTeams property value. Every team of the tournament&apos;s game that the caller may act for - captain, co-captain, or owner of the team&apos;s organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
     * @return a {@link java.util.List<MyTournamentActableTeam>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<MyTournamentActableTeam> getActableTeams() {
        return this.actableTeams;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("actableTeams", (n) -> { this.setActableTeams(n.getCollectionOfObjectValues(MyTournamentActableTeam::createFromDiscriminatorValue)); });
        deserializerMap.put("freeAgent", (n) -> { this.setFreeAgent(n.getObjectValue(MyTournamentFreeAgent::createFromDiscriminatorValue)); });
        deserializerMap.put("invites", (n) -> { this.setInvites(n.getCollectionOfObjectValues(MyTournamentInvite::createFromDiscriminatorValue)); });
        deserializerMap.put("offers", (n) -> { this.setOffers(n.getCollectionOfObjectValues(MyTournamentOffer::createFromDiscriminatorValue)); });
        deserializerMap.put("participants", (n) -> { this.setParticipants(n.getCollectionOfObjectValues(MyTournamentParticipant::createFromDiscriminatorValue)); });
        deserializerMap.put("requiredConnectionMissing", (n) -> { this.setRequiredConnectionMissing(n.getBooleanValue()); });
        deserializerMap.put("rosterEntries", (n) -> { this.setRosterEntries(n.getCollectionOfObjectValues(MyTournamentRosterEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("tournamentId", (n) -> { this.setTournamentId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the freeAgent property value. The caller&apos;s free-agent row, or null if they have never joined this tournament&apos;s pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
     * @return a {@link MyTournamentFreeAgent}
     */
    @jakarta.annotation.Nullable
    public MyTournamentFreeAgent getFreeAgent() {
        return this.freeAgent;
    }
    /**
     * Gets the invites property value. Every invite addressed to an actable team, in all four states.
     * @return a {@link java.util.List<MyTournamentInvite>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<MyTournamentInvite> getInvites() {
        return this.invites;
    }
    /**
     * Gets the offers property value. Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
     * @return a {@link java.util.List<MyTournamentOffer>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<MyTournamentOffer> getOffers() {
        return this.offers;
    }
    /**
     * Gets the participants property value. Every entry belonging to one of the caller&apos;s teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
     * @return a {@link java.util.List<MyTournamentParticipant>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<MyTournamentParticipant> getParticipants() {
        return this.participants;
    }
    /**
     * Gets the requiredConnectionMissing property value. True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getRequiredConnectionMissing() {
        return this.requiredConnectionMissing;
    }
    /**
     * Gets the rosterEntries property value. Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
     * @return a {@link java.util.List<MyTournamentRosterEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<MyTournamentRosterEntry> getRosterEntries() {
        return this.rosterEntries;
    }
    /**
     * Gets the slug property value. The tournament&apos;s canonical slug. Echoed because the request may have used a stale one that still resolves.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the tournamentId property value. Tournament ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTournamentId() {
        return this.tournamentId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("actableTeams", this.getActableTeams());
        writer.writeObjectValue("freeAgent", this.getFreeAgent());
        writer.writeCollectionOfObjectValues("invites", this.getInvites());
        writer.writeCollectionOfObjectValues("offers", this.getOffers());
        writer.writeCollectionOfObjectValues("participants", this.getParticipants());
        writer.writeBooleanValue("requiredConnectionMissing", this.getRequiredConnectionMissing());
        writer.writeCollectionOfObjectValues("rosterEntries", this.getRosterEntries());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeStringValue("tournamentId", this.getTournamentId());
    }
    /**
     * Sets the actableTeams property value. Every team of the tournament&apos;s game that the caller may act for - captain, co-captain, or owner of the team&apos;s organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
     * @param value Value to set for the actableTeams property.
     */
    public void setActableTeams(@jakarta.annotation.Nullable final java.util.List<MyTournamentActableTeam> value) {
        this.actableTeams = value;
    }
    /**
     * Sets the freeAgent property value. The caller&apos;s free-agent row, or null if they have never joined this tournament&apos;s pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
     * @param value Value to set for the freeAgent property.
     */
    public void setFreeAgent(@jakarta.annotation.Nullable final MyTournamentFreeAgent value) {
        this.freeAgent = value;
    }
    /**
     * Sets the invites property value. Every invite addressed to an actable team, in all four states.
     * @param value Value to set for the invites property.
     */
    public void setInvites(@jakarta.annotation.Nullable final java.util.List<MyTournamentInvite> value) {
        this.invites = value;
    }
    /**
     * Sets the offers property value. Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
     * @param value Value to set for the offers property.
     */
    public void setOffers(@jakarta.annotation.Nullable final java.util.List<MyTournamentOffer> value) {
        this.offers = value;
    }
    /**
     * Sets the participants property value. Every entry belonging to one of the caller&apos;s teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
     * @param value Value to set for the participants property.
     */
    public void setParticipants(@jakarta.annotation.Nullable final java.util.List<MyTournamentParticipant> value) {
        this.participants = value;
    }
    /**
     * Sets the requiredConnectionMissing property value. True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
     * @param value Value to set for the requiredConnectionMissing property.
     */
    public void setRequiredConnectionMissing(@jakarta.annotation.Nullable final Boolean value) {
        this.requiredConnectionMissing = value;
    }
    /**
     * Sets the rosterEntries property value. Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
     * @param value Value to set for the rosterEntries property.
     */
    public void setRosterEntries(@jakarta.annotation.Nullable final java.util.List<MyTournamentRosterEntry> value) {
        this.rosterEntries = value;
    }
    /**
     * Sets the slug property value. The tournament&apos;s canonical slug. Echoed because the request may have used a stale one that still resolves.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the tournamentId property value. Tournament ID.
     * @param value Value to set for the tournamentId property.
     */
    public void setTournamentId(@jakarta.annotation.Nullable final String value) {
        this.tournamentId = value;
    }
}
