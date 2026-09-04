// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_format_config.dart';
import './tournament_prize_breakdown_entry.dart';
import './tournament_social_links.dart';
import './tournament_sponsor_tag.dart';
import './tournament_update_request_body_format.dart';
import './tournament_update_request_body_registration_mode.dart';
import './tournament_update_request_body_visibility.dart';

/// auto generated
/// Partial tournament edit. Send only the fields you are changing; at least one recognised field is required. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - check the response `applied` value and `changedFields`. `freeAgentsEnabled`, `seedingMethod` and the league-points settings are NOT editable here (league points has its own endpoint).
class TournamentUpdateRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    String? bannerStorageId;
    ///  The checkInOpensMinutesBefore property
    int? checkInOpensMinutesBefore;
    ///  The checkInRequired property
    bool? checkInRequired;
    ///  The description property
    String? description;
    ///  Unix ms.
    int? endsAt;
    ///  The format property
    TournamentUpdateRequestBodyFormat? format;
    ///  Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
    TournamentFormatConfig? formatConfig;
    ///  Convex game id.
    String? gameId;
    ///  Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    String? logoStorageId;
    ///  Re-checked against the format entrant ceiling AND the host plan's participant limit whenever it or `format` changes.
    int? maxParticipants;
    ///  The minParticipants property
    int? minParticipants;
    ///  The name property
    String? name;
    ///  Convex game playlist id.
    String? playlistId;
    ///  The prizeBreakdown property
    Iterable<TournamentPrizeBreakdownEntry>? prizeBreakdown;
    ///  The prizeCurrency property
    String? prizeCurrency;
    ///  The prizeDescription property
    String? prizeDescription;
    ///  The prizePool property
    double? prizePool;
    ///  Unix ms.
    int? registrationEndsAt;
    ///  The registrationMode property
    TournamentUpdateRequestBodyRegistrationMode? registrationMode;
    ///  Unix ms.
    int? registrationStartsAt;
    ///  The rules property
    String? rules;
    ///  Organizer social links.
    TournamentSocialLinks? socialLinks;
    ///  The sponsorTags property
    Iterable<TournamentSponsorTag>? sponsorTags;
    ///  Unix ms.
    int? startsAt;
    ///  The teamSize property
    int? teamSize;
    ///  The visibility property
    TournamentUpdateRequestBodyVisibility? visibility;
    /// Instantiates a new [TournamentUpdateRequestBody] and sets the default values.
    TournamentUpdateRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentUpdateRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentUpdateRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bannerStorageId'] = (node) => bannerStorageId = node.getStringValue();
        deserializerMap['checkInOpensMinutesBefore'] = (node) => checkInOpensMinutesBefore = node.getIntValue();
        deserializerMap['checkInRequired'] = (node) => checkInRequired = node.getBoolValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['endsAt'] = (node) => endsAt = node.getIntValue();
        deserializerMap['format'] = (node) => format = node.getEnumValue<TournamentUpdateRequestBodyFormat>((stringValue) => TournamentUpdateRequestBodyFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['formatConfig'] = (node) => formatConfig = node.getObjectValue<TournamentFormatConfig>(TournamentFormatConfig.createFromDiscriminatorValue);
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['logoStorageId'] = (node) => logoStorageId = node.getStringValue();
        deserializerMap['maxParticipants'] = (node) => maxParticipants = node.getIntValue();
        deserializerMap['minParticipants'] = (node) => minParticipants = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['playlistId'] = (node) => playlistId = node.getStringValue();
        deserializerMap['prizeBreakdown'] = (node) => prizeBreakdown = node.getCollectionOfObjectValues<TournamentPrizeBreakdownEntry>(TournamentPrizeBreakdownEntry.createFromDiscriminatorValue);
        deserializerMap['prizeCurrency'] = (node) => prizeCurrency = node.getStringValue();
        deserializerMap['prizeDescription'] = (node) => prizeDescription = node.getStringValue();
        deserializerMap['prizePool'] = (node) => prizePool = node.getDoubleValue();
        deserializerMap['registrationEndsAt'] = (node) => registrationEndsAt = node.getIntValue();
        deserializerMap['registrationMode'] = (node) => registrationMode = node.getEnumValue<TournamentUpdateRequestBodyRegistrationMode>((stringValue) => TournamentUpdateRequestBodyRegistrationMode.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['registrationStartsAt'] = (node) => registrationStartsAt = node.getIntValue();
        deserializerMap['rules'] = (node) => rules = node.getStringValue();
        deserializerMap['socialLinks'] = (node) => socialLinks = node.getObjectValue<TournamentSocialLinks>(TournamentSocialLinks.createFromDiscriminatorValue);
        deserializerMap['sponsorTags'] = (node) => sponsorTags = node.getCollectionOfObjectValues<TournamentSponsorTag>(TournamentSponsorTag.createFromDiscriminatorValue);
        deserializerMap['startsAt'] = (node) => startsAt = node.getIntValue();
        deserializerMap['teamSize'] = (node) => teamSize = node.getIntValue();
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<TournamentUpdateRequestBodyVisibility>((stringValue) => TournamentUpdateRequestBodyVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('bannerStorageId', bannerStorageId);
        writer.writeIntValue('checkInOpensMinutesBefore', checkInOpensMinutesBefore);
        writer.writeBoolValue('checkInRequired', value:checkInRequired);
        writer.writeStringValue('description', description);
        writer.writeIntValue('endsAt', endsAt);
        writer.writeEnumValue<TournamentUpdateRequestBodyFormat>('format', format, (e) => e?.value);
        writer.writeObjectValue<TournamentFormatConfig>('formatConfig', formatConfig);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('logoStorageId', logoStorageId);
        writer.writeIntValue('maxParticipants', maxParticipants);
        writer.writeIntValue('minParticipants', minParticipants);
        writer.writeStringValue('name', name);
        writer.writeStringValue('playlistId', playlistId);
        writer.writeCollectionOfObjectValues<TournamentPrizeBreakdownEntry>('prizeBreakdown', prizeBreakdown);
        writer.writeStringValue('prizeCurrency', prizeCurrency);
        writer.writeStringValue('prizeDescription', prizeDescription);
        writer.writeDoubleValue('prizePool', prizePool);
        writer.writeIntValue('registrationEndsAt', registrationEndsAt);
        writer.writeEnumValue<TournamentUpdateRequestBodyRegistrationMode>('registrationMode', registrationMode, (e) => e?.value);
        writer.writeIntValue('registrationStartsAt', registrationStartsAt);
        writer.writeStringValue('rules', rules);
        writer.writeObjectValue<TournamentSocialLinks>('socialLinks', socialLinks);
        writer.writeCollectionOfObjectValues<TournamentSponsorTag>('sponsorTags', sponsorTags);
        writer.writeIntValue('startsAt', startsAt);
        writer.writeIntValue('teamSize', teamSize);
        writer.writeEnumValue<TournamentUpdateRequestBodyVisibility>('visibility', visibility, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
