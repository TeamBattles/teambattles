// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Confirmation payload for the match-regeneration repair lever.
class TournamentRegenerateMatchesRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Must be exactly `true`. Required so this repair lever cannot be fired by an empty or accidental POST.
    bool? confirm;
    /// Instantiates a new [TournamentRegenerateMatchesRequestBody] and sets the default values.
    TournamentRegenerateMatchesRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentRegenerateMatchesRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentRegenerateMatchesRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['confirm'] = (node) => confirm = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('confirm', value:confirm);
        writer.writeAdditionalData(additionalData);
    }
}
