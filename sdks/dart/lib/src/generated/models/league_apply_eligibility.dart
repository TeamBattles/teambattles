// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_apply_eligibility_eligibility.dart';

/// auto generated
/// League application eligibility.
class LeagueApplyEligibility implements Parsable {
    ///  API key owner's apply-to-join eligibility.
    LeagueApplyEligibilityEligibility? eligibility;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueApplyEligibility createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueApplyEligibility();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['eligibility'] = (node) => eligibility = node.getObjectValue<LeagueApplyEligibilityEligibility>(LeagueApplyEligibilityEligibility.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<LeagueApplyEligibilityEligibility>('eligibility', eligibility);
        writer.writeStringValue('timestamp', timestamp);
    }
}
