// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Sends an announcement to all members of the league.
class AnnounceLeagueRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Announcement body text.
    String? body;
    ///  Announcement title.
    String? title;
    /// Instantiates a new [AnnounceLeagueRequestBody] and sets the default values.
    AnnounceLeagueRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AnnounceLeagueRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return AnnounceLeagueRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['body'] = (node) => body = node.getStringValue();
        deserializerMap['title'] = (node) => title = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('body', body);
        writer.writeStringValue('title', title);
        writer.writeAdditionalData(additionalData);
    }
}
