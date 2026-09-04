// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_create_request_body_host_type.dart';
import './tournament_create_request_body_registration_mode.dart';
import './tournament_create_request_body_seeding_method.dart';
import './tournament_create_request_body_visibility.dart';
import './tournament_default_match_config.dart';
import './tournament_format.dart';
import './tournament_format_config.dart';
import './tournament_placement_points_entry.dart';
import './tournament_prize_breakdown_entry.dart';
import './tournament_social_links.dart';
import './tournament_sponsor_tag.dart';

/// auto generated
/// A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
class TournamentCreateRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    String? bannerStorageId;
    ///  The checkInOpensMinutesBefore property
    int? checkInOpensMinutesBefore;
    ///  The checkInRequired property
    bool? checkInRequired;
    ///  Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
    TournamentDefaultMatchConfig? defaultMatchConfig;
    ///  The description property
    String? description;
    ///  Unix ms.
    int? endsAt;
    ///  Bracket format of a tournament.
    TournamentFormat? format;
    ///  Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
    TournamentFormatConfig? formatConfig;
    ///  Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
    bool? freeAgentsEnabled;
    ///  Convex game id.
    String? gameId;
    ///  Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
    String? hostId;
    ///  Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
    TournamentCreateRequestBodyHostType? hostType;
    ///  LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
    Iterable<TournamentPlacementPointsEntry>? leaguePointsByPlacement;
    ///  LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
    bool? leaguePointsEnabled;
    ///  Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    String? logoStorageId;
    ///  Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
    int? maxParticipants;
    ///  The minParticipants property
    int? minParticipants;
    ///  Tournament name, 3-80 characters after trimming.
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
    TournamentCreateRequestBodyRegistrationMode? registrationMode;
    ///  Unix ms.
    int? registrationStartsAt;
    ///  The rules property
    String? rules;
    ///  Defaults to the platform default when omitted. NOT editable afterwards.
    TournamentCreateRequestBodySeedingMethod? seedingMethod;
    ///  Organizer social links.
    TournamentSocialLinks? socialLinks;
    ///  Bounded by the host plan's sponsor-tag limit.
    Iterable<TournamentSponsorTag>? sponsorTags;
    ///  Unix ms.
    int? startsAt;
    ///  Players per side.
    int? teamSize;
    ///  The visibility property
    TournamentCreateRequestBodyVisibility? visibility;
    /// Instantiates a new [TournamentCreateRequestBody] and sets the default values.
    TournamentCreateRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentCreateRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentCreateRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['bannerStorageId'] = (node) => bannerStorageId = node.getStringValue();
        deserializerMap['checkInOpensMinutesBefore'] = (node) => checkInOpensMinutesBefore = node.getIntValue();
        deserializerMap['checkInRequired'] = (node) => checkInRequired = node.getBoolValue();
        deserializerMap['defaultMatchConfig'] = (node) => defaultMatchConfig = node.getObjectValue<TournamentDefaultMatchConfig>(TournamentDefaultMatchConfig.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['endsAt'] = (node) => endsAt = node.getIntValue();
        deserializerMap['format'] = (node) => format = node.getEnumValue<TournamentFormat>((stringValue) => TournamentFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['formatConfig'] = (node) => formatConfig = node.getObjectValue<TournamentFormatConfig>(TournamentFormatConfig.createFromDiscriminatorValue);
        deserializerMap['freeAgentsEnabled'] = (node) => freeAgentsEnabled = node.getBoolValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['hostId'] = (node) => hostId = node.getStringValue();
        deserializerMap['hostType'] = (node) => hostType = node.getEnumValue<TournamentCreateRequestBodyHostType>((stringValue) => TournamentCreateRequestBodyHostType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['leaguePointsByPlacement'] = (node) => leaguePointsByPlacement = node.getCollectionOfObjectValues<TournamentPlacementPointsEntry>(TournamentPlacementPointsEntry.createFromDiscriminatorValue);
        deserializerMap['leaguePointsEnabled'] = (node) => leaguePointsEnabled = node.getBoolValue();
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
        deserializerMap['registrationMode'] = (node) => registrationMode = node.getEnumValue<TournamentCreateRequestBodyRegistrationMode>((stringValue) => TournamentCreateRequestBodyRegistrationMode.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['registrationStartsAt'] = (node) => registrationStartsAt = node.getIntValue();
        deserializerMap['rules'] = (node) => rules = node.getStringValue();
        deserializerMap['seedingMethod'] = (node) => seedingMethod = node.getEnumValue<TournamentCreateRequestBodySeedingMethod>((stringValue) => TournamentCreateRequestBodySeedingMethod.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['socialLinks'] = (node) => socialLinks = node.getObjectValue<TournamentSocialLinks>(TournamentSocialLinks.createFromDiscriminatorValue);
        deserializerMap['sponsorTags'] = (node) => sponsorTags = node.getCollectionOfObjectValues<TournamentSponsorTag>(TournamentSponsorTag.createFromDiscriminatorValue);
        deserializerMap['startsAt'] = (node) => startsAt = node.getIntValue();
        deserializerMap['teamSize'] = (node) => teamSize = node.getIntValue();
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<TournamentCreateRequestBodyVisibility>((stringValue) => TournamentCreateRequestBodyVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('bannerStorageId', bannerStorageId);
        writer.writeIntValue('checkInOpensMinutesBefore', checkInOpensMinutesBefore);
        writer.writeBoolValue('checkInRequired', value:checkInRequired);
        writer.writeObjectValue<TournamentDefaultMatchConfig>('defaultMatchConfig', defaultMatchConfig);
        writer.writeStringValue('description', description);
        writer.writeIntValue('endsAt', endsAt);
        writer.writeEnumValue<TournamentFormat>('format', format, (e) => e?.value);
        writer.writeObjectValue<TournamentFormatConfig>('formatConfig', formatConfig);
        writer.writeBoolValue('freeAgentsEnabled', value:freeAgentsEnabled);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('hostId', hostId);
        writer.writeEnumValue<TournamentCreateRequestBodyHostType>('hostType', hostType, (e) => e?.value);
        writer.writeCollectionOfObjectValues<TournamentPlacementPointsEntry>('leaguePointsByPlacement', leaguePointsByPlacement);
        writer.writeBoolValue('leaguePointsEnabled', value:leaguePointsEnabled);
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
        writer.writeEnumValue<TournamentCreateRequestBodyRegistrationMode>('registrationMode', registrationMode, (e) => e?.value);
        writer.writeIntValue('registrationStartsAt', registrationStartsAt);
        writer.writeStringValue('rules', rules);
        writer.writeEnumValue<TournamentCreateRequestBodySeedingMethod>('seedingMethod', seedingMethod, (e) => e?.value);
        writer.writeObjectValue<TournamentSocialLinks>('socialLinks', socialLinks);
        writer.writeCollectionOfObjectValues<TournamentSponsorTag>('sponsorTags', sponsorTags);
        writer.writeIntValue('startsAt', startsAt);
        writer.writeIntValue('teamSize', teamSize);
        writer.writeEnumValue<TournamentCreateRequestBodyVisibility>('visibility', visibility, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
