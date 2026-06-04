// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_summary_banner_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [LeagueSummaryBannerUrlMember1], [String?]
class LeagueSummaryBannerUrl implements Parsable {
    ///  Composed type representation for type [LeagueSummaryBannerUrlMember1]
    LeagueSummaryBannerUrlMember1? leagueSummaryBannerUrlMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueSummaryBannerUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = LeagueSummaryBannerUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.leagueSummaryBannerUrlMember1 = LeagueSummaryBannerUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(leagueSummaryBannerUrlMember1 != null){leagueSummaryBannerUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<LeagueSummaryBannerUrlMember1>(null, leagueSummaryBannerUrlMember1);
        }
    }
}
