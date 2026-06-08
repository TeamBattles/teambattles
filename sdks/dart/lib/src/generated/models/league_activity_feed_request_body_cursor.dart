// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_activity_feed_request_body_cursor_member1.dart';

/// auto generated
/// Composed type wrapper for classes [LeagueActivityFeedRequestBodyCursorMember1], [String?]
class LeagueActivityFeedRequestBodyCursor implements Parsable {
    ///  Composed type representation for type [LeagueActivityFeedRequestBodyCursorMember1]
    LeagueActivityFeedRequestBodyCursorMember1? leagueActivityFeedRequestBodyCursorMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueActivityFeedRequestBodyCursor createFromDiscriminatorValue(ParseNode parseNode) {
        var result = LeagueActivityFeedRequestBodyCursor();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.leagueActivityFeedRequestBodyCursorMember1 = LeagueActivityFeedRequestBodyCursorMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(leagueActivityFeedRequestBodyCursorMember1 != null){leagueActivityFeedRequestBodyCursorMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<LeagueActivityFeedRequestBodyCursorMember1>(null, leagueActivityFeedRequestBodyCursorMember1);
        }
    }
}
