// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Free agent's response to a pickup offer.
class TournamentOfferRespondBody implements AdditionalDataHolder, Parsable {
    ///  true to accept the offer and join the offering team's roster, false to decline it. A competitive ban blocks accepting but never declining.
    bool? accept;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    /// Instantiates a new [TournamentOfferRespondBody] and sets the default values.
    TournamentOfferRespondBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentOfferRespondBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentOfferRespondBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accept'] = (node) => accept = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('accept', value:accept);
        writer.writeAdditionalData(additionalData);
    }
}
