// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Organizer social links.
class TournamentSocialLinks implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The discord property
    String? discord;
    ///  The instagram property
    String? instagram;
    ///  The tiktok property
    String? tiktok;
    ///  The twitch property
    String? twitch;
    ///  The website property
    String? website;
    ///  The x property
    String? x;
    ///  The youtube property
    String? youtube;
    /// Instantiates a new [TournamentSocialLinks] and sets the default values.
    TournamentSocialLinks() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentSocialLinks createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentSocialLinks();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['discord'] = (node) => discord = node.getStringValue();
        deserializerMap['instagram'] = (node) => instagram = node.getStringValue();
        deserializerMap['tiktok'] = (node) => tiktok = node.getStringValue();
        deserializerMap['twitch'] = (node) => twitch = node.getStringValue();
        deserializerMap['website'] = (node) => website = node.getStringValue();
        deserializerMap['x'] = (node) => x = node.getStringValue();
        deserializerMap['youtube'] = (node) => youtube = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('discord', discord);
        writer.writeStringValue('instagram', instagram);
        writer.writeStringValue('tiktok', tiktok);
        writer.writeStringValue('twitch', twitch);
        writer.writeStringValue('website', website);
        writer.writeStringValue('x', x);
        writer.writeStringValue('youtube', youtube);
        writer.writeAdditionalData(additionalData);
    }
}
