// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_format.dart';
import './tournament_profile_banner_url.dart';
import './tournament_profile_logo_url.dart';
import './tournament_profile_viewer_management.dart';
import './tournament_status.dart';

/// auto generated
/// Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
class TournamentProfile implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Platform review state, independent of `status`.
    String? approvalStatus;
    ///  Banner image URL.
    TournamentProfileBannerUrl? bannerUrl;
    ///  Bracket format of a tournament.
    TournamentFormat? format;
    ///  Game summary, or null if the game row is missing.
    UntypedNode? game;
    ///  Host identity (user, org, or league), or null if unresolvable.
    UntypedNode? host;
    ///  Tournament ID.
    String? id;
    ///  Whether the tournament appears in discovery.
    bool? isPubliclyListed;
    ///  Logo image URL.
    TournamentProfileLogoUrl? logoUrl;
    ///  Participant cap.
    int? maxParticipants;
    ///  Tournament display name.
    String? name;
    ///  Whether the tournament is non-terminal AND awaiting organizer action on approval.
    bool? needsAttention;
    ///  Current number of participants.
    int? participantCount;
    ///  URL-friendly tournament identifier.
    String? slug;
    ///  Lifecycle status of a tournament.
    TournamentStatus? status;
    ///  Players per participating team.
    int? teamSize;
    ///  The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
    TournamentProfileViewerManagement? viewerManagement;
    ///  PUBLIC or UNLISTED.
    String? visibility;
    /// Instantiates a new [TournamentProfile] and sets the default values.
    TournamentProfile() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentProfile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['approvalStatus'] = (node) => approvalStatus = node.getStringValue();
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getObjectValue<TournamentProfileBannerUrl>(TournamentProfileBannerUrl.createFromDiscriminatorValue);
        deserializerMap['format'] = (node) => format = node.getEnumValue<TournamentFormat>((stringValue) => TournamentFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['game'] = (node) => game = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['host'] = (node) => host = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['_id'] = (node) => id = node.getStringValue();
        deserializerMap['isPubliclyListed'] = (node) => isPubliclyListed = node.getBoolValue();
        deserializerMap['logoUrl'] = (node) => logoUrl = node.getObjectValue<TournamentProfileLogoUrl>(TournamentProfileLogoUrl.createFromDiscriminatorValue);
        deserializerMap['maxParticipants'] = (node) => maxParticipants = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['needsAttention'] = (node) => needsAttention = node.getBoolValue();
        deserializerMap['participantCount'] = (node) => participantCount = node.getIntValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentStatus>((stringValue) => TournamentStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamSize'] = (node) => teamSize = node.getIntValue();
        deserializerMap['viewerManagement'] = (node) => viewerManagement = node.getObjectValue<TournamentProfileViewerManagement>(TournamentProfileViewerManagement.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('approvalStatus', approvalStatus);
        writer.writeObjectValue<TournamentProfileBannerUrl>('bannerUrl', bannerUrl);
        writer.writeEnumValue<TournamentFormat>('format', format, (e) => e?.value);
        writer.writeObjectValue<UntypedNode>('game', game);
        writer.writeObjectValue<UntypedNode>('host', host);
        writer.writeStringValue('_id', id);
        writer.writeBoolValue('isPubliclyListed', value:isPubliclyListed);
        writer.writeObjectValue<TournamentProfileLogoUrl>('logoUrl', logoUrl);
        writer.writeIntValue('maxParticipants', maxParticipants);
        writer.writeStringValue('name', name);
        writer.writeBoolValue('needsAttention', value:needsAttention);
        writer.writeIntValue('participantCount', participantCount);
        writer.writeStringValue('slug', slug);
        writer.writeEnumValue<TournamentStatus>('status', status, (e) => e?.value);
        writer.writeIntValue('teamSize', teamSize);
        writer.writeObjectValue<TournamentProfileViewerManagement>('viewerManagement', viewerManagement);
        writer.writeStringValue('visibility', visibility);
        writer.writeAdditionalData(additionalData);
    }
}
