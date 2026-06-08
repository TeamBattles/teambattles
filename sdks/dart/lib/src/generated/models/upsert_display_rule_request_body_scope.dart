// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class UpsertDisplayRuleRequestBodyScope implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The modes property
    Iterable<String>? modes;
    ///  The playlists property
    Iterable<String>? playlists;
    /// Instantiates a new [UpsertDisplayRuleRequestBodyScope] and sets the default values.
    UpsertDisplayRuleRequestBodyScope() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpsertDisplayRuleRequestBodyScope createFromDiscriminatorValue(ParseNode parseNode) {
        return UpsertDisplayRuleRequestBodyScope();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['modes'] = (node) => modes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['playlists'] = (node) => playlists = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('modes', modes);
        writer.writeCollectionOfPrimitiveValues<String?>('playlists', playlists);
        writer.writeAdditionalData(additionalData);
    }
}
