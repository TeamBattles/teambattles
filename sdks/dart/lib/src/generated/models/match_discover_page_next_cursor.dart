// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './match_discover_page_next_cursor_member1.dart';

/// auto generated
/// Composed type wrapper for classes [MatchDiscoverPageNextCursorMember1], [String?]
class MatchDiscoverPageNextCursor implements Parsable {
    ///  Composed type representation for type [MatchDiscoverPageNextCursorMember1]
    MatchDiscoverPageNextCursorMember1? matchDiscoverPageNextCursorMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MatchDiscoverPageNextCursor createFromDiscriminatorValue(ParseNode parseNode) {
        var result = MatchDiscoverPageNextCursor();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.matchDiscoverPageNextCursorMember1 = MatchDiscoverPageNextCursorMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(matchDiscoverPageNextCursorMember1 != null){matchDiscoverPageNextCursorMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<MatchDiscoverPageNextCursorMember1>(null, matchDiscoverPageNextCursorMember1);
        }
    }
}
