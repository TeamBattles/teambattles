// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_sponsor_tag_prefix.dart';

/// auto generated
/// One sponsor credit line.
class TournamentSponsorTag implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Used only when prefix is CUSTOM.
    String? customPrefix;
    ///  Convex storage id for the sponsor logo, from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url is rejected with 400 error_image_blob_unbound. On an update, re-send the id already stored on each sponsor row you are not changing.
    String? logoStorageId;
    ///  The name property
    String? name;
    ///  The prefix property
    TournamentSponsorTagPrefix? prefix;
    ///  The url property
    String? url;
    /// Instantiates a new [TournamentSponsorTag] and sets the default values.
    TournamentSponsorTag() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentSponsorTag createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentSponsorTag();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['customPrefix'] = (node) => customPrefix = node.getStringValue();
        deserializerMap['logoStorageId'] = (node) => logoStorageId = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['prefix'] = (node) => prefix = node.getEnumValue<TournamentSponsorTagPrefix>((stringValue) => TournamentSponsorTagPrefix.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['url'] = (node) => url = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('customPrefix', customPrefix);
        writer.writeStringValue('logoStorageId', logoStorageId);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<TournamentSponsorTagPrefix>('prefix', prefix, (e) => e?.value);
        writer.writeStringValue('url', url);
        writer.writeAdditionalData(additionalData);
    }
}
