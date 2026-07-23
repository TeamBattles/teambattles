// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The newly created draft tournament.
class TournamentCreateResponse implements Parsable {
    ///  Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
    String? approvalStatus;
    ///  Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
    String? slug;
    ///  Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
    String? status;
    ///  The success property
    bool? success;
    ///  The timestamp property
    String? timestamp;
    ///  The tournamentId property
    String? tournamentId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentCreateResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentCreateResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['approvalStatus'] = (node) => approvalStatus = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['tournamentId'] = (node) => tournamentId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('approvalStatus', approvalStatus);
        writer.writeStringValue('slug', slug);
        writer.writeStringValue('status', status);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
        writer.writeStringValue('tournamentId', tournamentId);
    }
}
