// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class LeagueBrandingSocials implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The discord property
    String? discord;
    ///  The twitch property
    String? twitch;
    ///  The twitter property
    String? twitter;
    ///  The website property
    String? website;
    ///  The youtube property
    String? youtube;
    /// Instantiates a new [LeagueBrandingSocials] and sets the default values.
    LeagueBrandingSocials() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueBrandingSocials createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueBrandingSocials();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['discord'] = (node) => discord = node.getStringValue();
        deserializerMap['twitch'] = (node) => twitch = node.getStringValue();
        deserializerMap['twitter'] = (node) => twitter = node.getStringValue();
        deserializerMap['website'] = (node) => website = node.getStringValue();
        deserializerMap['youtube'] = (node) => youtube = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('discord', discord);
        writer.writeStringValue('twitch', twitch);
        writer.writeStringValue('twitter', twitter);
        writer.writeStringValue('website', website);
        writer.writeStringValue('youtube', youtube);
        writer.writeAdditionalData(additionalData);
    }
}
