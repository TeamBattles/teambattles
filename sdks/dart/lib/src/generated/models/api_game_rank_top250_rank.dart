// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_rank_top250_rank_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiGameRankTop250RankMember1], [int?]
class ApiGameRankTop250Rank implements Parsable {
    ///  Composed type representation for type [ApiGameRankTop250RankMember1]
    ApiGameRankTop250RankMember1? apiGameRankTop250RankMember1;
    ///  Composed type representation for type [int?]
    int? integer;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameRankTop250Rank createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiGameRankTop250Rank();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.apiGameRankTop250RankMember1 = ApiGameRankTop250RankMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiGameRankTop250RankMember1 != null){apiGameRankTop250RankMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(integer != null) {
            writer.writeIntValue(null, integer);
        }
        else {
            writer.writeObjectValue<ApiGameRankTop250RankMember1>(null, apiGameRankTop250RankMember1);
        }
    }
}
