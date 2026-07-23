// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_format.dart';
import './tournament_status.dart';
import './tournament_summary_banner_url.dart';
import './tournament_summary_logo_url.dart';

/// auto generated
/// Summary view of a tournament for discovery.
class TournamentSummary implements Parsable {
    ///  Banner image URL.
    TournamentSummaryBannerUrl? bannerUrl;
    ///  Short tournament description.
    String? description;
    ///  Bracket format of a tournament.
    TournamentFormat? format;
    ///  Game summary, or null if the game row is missing.
    UntypedNode? game;
    ///  Tournament ID.
    String? id;
    ///  Whether the featured placement is live at request time.
    bool? isFeatured;
    ///  Logo image URL.
    TournamentSummaryLogoUrl? logoUrl;
    ///  Participant cap.
    int? maxParticipants;
    ///  Tournament display name.
    String? name;
    ///  Current number of participants.
    int? participantCount;
    ///  ISO currency code of the pool.
    String? prizeCurrency;
    ///  Total prize pool.
    double? prizePool;
    ///  URL-friendly tournament identifier.
    String? slug;
    ///  Scheduled start (epoch milliseconds).
    double? startsAt;
    ///  Lifecycle status of a tournament.
    TournamentStatus? status;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getObjectValue<TournamentSummaryBannerUrl>(TournamentSummaryBannerUrl.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['format'] = (node) => format = node.getEnumValue<TournamentFormat>((stringValue) => TournamentFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['game'] = (node) => game = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isFeatured'] = (node) => isFeatured = node.getBoolValue();
        deserializerMap['logoUrl'] = (node) => logoUrl = node.getObjectValue<TournamentSummaryLogoUrl>(TournamentSummaryLogoUrl.createFromDiscriminatorValue);
        deserializerMap['maxParticipants'] = (node) => maxParticipants = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['participantCount'] = (node) => participantCount = node.getIntValue();
        deserializerMap['prizeCurrency'] = (node) => prizeCurrency = node.getStringValue();
        deserializerMap['prizePool'] = (node) => prizePool = node.getDoubleValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['startsAt'] = (node) => startsAt = node.getDoubleValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentStatus>((stringValue) => TournamentStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentSummaryBannerUrl>('bannerUrl', bannerUrl);
        writer.writeStringValue('description', description);
        writer.writeEnumValue<TournamentFormat>('format', format, (e) => e?.value);
        writer.writeObjectValue<UntypedNode>('game', game);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isFeatured', value:isFeatured);
        writer.writeObjectValue<TournamentSummaryLogoUrl>('logoUrl', logoUrl);
        writer.writeIntValue('maxParticipants', maxParticipants);
        writer.writeStringValue('name', name);
        writer.writeIntValue('participantCount', participantCount);
        writer.writeStringValue('prizeCurrency', prizeCurrency);
        writer.writeDoubleValue('prizePool', prizePool);
        writer.writeStringValue('slug', slug);
        writer.writeDoubleValue('startsAt', startsAt);
        writer.writeEnumValue<TournamentStatus>('status', status, (e) => e?.value);
    }
}
