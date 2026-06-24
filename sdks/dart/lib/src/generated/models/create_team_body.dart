// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Creates a new team as the API key owner.
class CreateTeamBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional team description.
    String? description;
    ///  Game ID the team competes in.
    String? gameId;
    ///  Team name.
    String? name;
    ///  Owning organization ID. The owner must manage it.
    String? organizationId;
    ///  Optional platform.
    String? platform;
    ///  Game playlist ID.
    String? playlistId;
    ///  Optional region.
    String? region;
    ///  Team tag (short identifier).
    String? tag;
    /// Instantiates a new [CreateTeamBody] and sets the default values.
    CreateTeamBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateTeamBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateTeamBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['organizationId'] = (node) => organizationId = node.getStringValue();
        deserializerMap['platform'] = (node) => platform = node.getStringValue();
        deserializerMap['playlistId'] = (node) => playlistId = node.getStringValue();
        deserializerMap['region'] = (node) => region = node.getStringValue();
        deserializerMap['tag'] = (node) => tag = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('description', description);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('name', name);
        writer.writeStringValue('organizationId', organizationId);
        writer.writeStringValue('platform', platform);
        writer.writeStringValue('playlistId', playlistId);
        writer.writeStringValue('region', region);
        writer.writeStringValue('tag', tag);
        writer.writeAdditionalData(additionalData);
    }
}
