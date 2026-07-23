// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_start_request_body_seed_method.dart';

/// auto generated
/// Tournament start payload.
class TournamentStartRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
    Iterable<String>? manualOrder;
    ///  How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
    TournamentStartRequestBodySeedMethod? seedMethod;
    /// Instantiates a new [TournamentStartRequestBody] and sets the default values.
    TournamentStartRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentStartRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentStartRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['manualOrder'] = (node) => manualOrder = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['seedMethod'] = (node) => seedMethod = node.getEnumValue<TournamentStartRequestBodySeedMethod>((stringValue) => TournamentStartRequestBodySeedMethod.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('manualOrder', manualOrder);
        writer.writeEnumValue<TournamentStartRequestBodySeedMethod>('seedMethod', seedMethod, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
