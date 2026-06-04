// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_summary_avatar_url.dart';
import './league_summary_banner_url.dart';
import './league_summary_games.dart';
import './league_summary_season_status.dart';

/// auto generated
/// Summary view of a league for discovery results.
class LeagueSummary implements Parsable {
    ///  League avatar image URL.
    LeagueSummaryAvatarUrl? avatarUrl;
    ///  League banner image URL.
    LeagueSummaryBannerUrl? bannerUrl;
    ///  Creation timestamp (epoch milliseconds).
    double? createdAt;
    ///  League description.
    String? description;
    ///  Games associated with the league.
    Iterable<LeagueSummaryGames>? games;
    ///  League ID.
    String? id;
    ///  Whether the league is featured.
    bool? isFeatured;
    ///  Whether the league is verified.
    bool? isVerified;
    ///  League display name.
    String? name;
    ///  Aggregate season state across the league's games.
    LeagueSummarySeasonStatus? seasonStatus;
    ///  URL-friendly league identifier.
    String? slug;
    ///  League status.
    String? status;
    ///  Number of teams in the league.
    int? teamCount;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<LeagueSummaryAvatarUrl>(LeagueSummaryAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getObjectValue<LeagueSummaryBannerUrl>(LeagueSummaryBannerUrl.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['games'] = (node) => games = node.getCollectionOfObjectValues<LeagueSummaryGames>(LeagueSummaryGames.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isFeatured'] = (node) => isFeatured = node.getBoolValue();
        deserializerMap['isVerified'] = (node) => isVerified = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['seasonStatus'] = (node) => seasonStatus = node.getEnumValue<LeagueSummarySeasonStatus>((stringValue) => LeagueSummarySeasonStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getStringValue();
        deserializerMap['teamCount'] = (node) => teamCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<LeagueSummaryAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeObjectValue<LeagueSummaryBannerUrl>('bannerUrl', bannerUrl);
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('description', description);
        writer.writeCollectionOfObjectValues<LeagueSummaryGames>('games', games);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isFeatured', value:isFeatured);
        writer.writeBoolValue('isVerified', value:isVerified);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<LeagueSummarySeasonStatus>('seasonStatus', seasonStatus, (e) => e?.value);
        writer.writeStringValue('slug', slug);
        writer.writeStringValue('status', status);
        writer.writeIntValue('teamCount', teamCount);
    }
}
