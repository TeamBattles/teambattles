// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_profile_banner_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [LeagueProfileBannerUrlMember1], [String?]
class LeagueProfileBannerUrl implements Parsable {
    ///  Composed type representation for type [LeagueProfileBannerUrlMember1]
    LeagueProfileBannerUrlMember1? leagueProfileBannerUrlMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueProfileBannerUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = LeagueProfileBannerUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.leagueProfileBannerUrlMember1 = LeagueProfileBannerUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(leagueProfileBannerUrlMember1 != null){leagueProfileBannerUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<LeagueProfileBannerUrlMember1>(null, leagueProfileBannerUrlMember1);
        }
    }
}
