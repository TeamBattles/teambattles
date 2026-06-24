// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accept_challenge_request_body_bench_roster.dart';

/// auto generated
/// Accepts a pending challenge as the API key owner.
class AcceptChallengeRequestBody implements AdditionalDataHolder, Parsable {
    ///  Active roster user IDs for the challenge response.
    Iterable<String>? activeRoster;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional bench roster users.
    Iterable<AcceptChallengeRequestBodyBenchRoster>? benchRoster;
    /// Instantiates a new [AcceptChallengeRequestBody] and sets the default values.
    AcceptChallengeRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AcceptChallengeRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return AcceptChallengeRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activeRoster'] = (node) => activeRoster = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['benchRoster'] = (node) => benchRoster = node.getCollectionOfObjectValues<AcceptChallengeRequestBodyBenchRoster>(AcceptChallengeRequestBodyBenchRoster.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('activeRoster', activeRoster);
        writer.writeCollectionOfObjectValues<AcceptChallengeRequestBodyBenchRoster>('benchRoster', benchRoster);
        writer.writeAdditionalData(additionalData);
    }
}
