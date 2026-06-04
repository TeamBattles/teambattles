// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './matches_request_body_cursor_member1.dart';

/// auto generated
/// Composed type wrapper for classes [MatchesRequestBodyCursorMember1], [String?]
class MatchesRequestBodyCursor implements Parsable {
    ///  Composed type representation for type [MatchesRequestBodyCursorMember1]
    MatchesRequestBodyCursorMember1? matchesRequestBodyCursorMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MatchesRequestBodyCursor createFromDiscriminatorValue(ParseNode parseNode) {
        var result = MatchesRequestBodyCursor();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.matchesRequestBodyCursorMember1 = MatchesRequestBodyCursorMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(matchesRequestBodyCursorMember1 != null){matchesRequestBodyCursorMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(string_ != null) {
            writer.writeStringValue(null, string_);
        }
        else {
            writer.writeObjectValue<MatchesRequestBodyCursorMember1>(null, matchesRequestBodyCursorMember1);
        }
    }
}
