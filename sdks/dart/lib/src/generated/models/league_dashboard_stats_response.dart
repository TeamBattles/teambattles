// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_dashboard_stats_response_stats.dart';

/// auto generated
/// Aggregate league admin dashboard statistics.
class LeagueDashboardStatsResponse implements Parsable {
    ///  The stats property
    LeagueDashboardStatsResponseStats? stats;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueDashboardStatsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueDashboardStatsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['stats'] = (node) => stats = node.getObjectValue<LeagueDashboardStatsResponseStats>(LeagueDashboardStatsResponseStats.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<LeagueDashboardStatsResponseStats>('stats', stats);
        writer.writeStringValue('timestamp', timestamp);
    }
}
