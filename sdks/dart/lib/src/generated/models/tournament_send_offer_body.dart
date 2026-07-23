// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Free-agent pickup offer payload.
class TournamentSendOfferBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional message delivered to the free agent alongside the offer.
    String? message;
    ///  Participant ID of YOUR team making the offer. You must be its captain, co-captain, or the owner of the organization that owns it, and it must be APPROVED in this tournament. Discover it via GET /tournaments/{identifier}/me.
    String? participantId;
    /// Instantiates a new [TournamentSendOfferBody] and sets the default values.
    TournamentSendOfferBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentSendOfferBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentSendOfferBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['message'] = (node) => message = node.getStringValue();
        deserializerMap['participantId'] = (node) => participantId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('message', message);
        writer.writeStringValue('participantId', participantId);
        writer.writeAdditionalData(additionalData);
    }
}
