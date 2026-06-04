// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_profile_active_seasons.dart';
import './league_profile_avatar_url.dart';
import './league_profile_banner_url.dart';
import './league_profile_games.dart';

/// auto generated
/// Public profile for a single league.
class LeagueProfile implements Parsable {
    ///  Currently active seasons.
    Iterable<LeagueProfileActiveSeasons>? activeSeasons;
    ///  League avatar image URL.
    LeagueProfileAvatarUrl? avatarUrl;
    ///  League banner image URL.
    LeagueProfileBannerUrl? bannerUrl;
    ///  Creation timestamp (epoch milliseconds).
    double? createdAt;
    ///  League description.
    String? description;
    ///  Games associated with the league.
    Iterable<LeagueProfileGames>? games;
    ///  League ID.
    String? id;
    ///  Whether the league is featured.
    bool? isFeatured;
    ///  Whether the league is verified.
    bool? isVerified;
    ///  League display name.
    String? name;
    ///  URL-friendly league identifier.
    String? slug;
    ///  Social media links.
    UntypedNode? socials;
    ///  Number of staff members.
    int? staffCount;
    ///  League status (e.g. active, inactive).
    String? status;
    ///  Number of teams in the league.
    int? teamCount;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueProfile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activeSeasons'] = (node) => activeSeasons = node.getCollectionOfObjectValues<LeagueProfileActiveSeasons>(LeagueProfileActiveSeasons.createFromDiscriminatorValue);
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<LeagueProfileAvatarUrl>(LeagueProfileAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getObjectValue<LeagueProfileBannerUrl>(LeagueProfileBannerUrl.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['games'] = (node) => games = node.getCollectionOfObjectValues<LeagueProfileGames>(LeagueProfileGames.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isFeatured'] = (node) => isFeatured = node.getBoolValue();
        deserializerMap['isVerified'] = (node) => isVerified = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['socials'] = (node) => socials = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['staffCount'] = (node) => staffCount = node.getIntValue();
        deserializerMap['status'] = (node) => status = node.getStringValue();
        deserializerMap['teamCount'] = (node) => teamCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<LeagueProfileActiveSeasons>('activeSeasons', activeSeasons);
        writer.writeObjectValue<LeagueProfileAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeObjectValue<LeagueProfileBannerUrl>('bannerUrl', bannerUrl);
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('description', description);
        writer.writeCollectionOfObjectValues<LeagueProfileGames>('games', games);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isFeatured', value:isFeatured);
        writer.writeBoolValue('isVerified', value:isVerified);
        writer.writeStringValue('name', name);
        writer.writeStringValue('slug', slug);
        writer.writeObjectValue<UntypedNode>('socials', socials);
        writer.writeIntValue('staffCount', staffCount);
        writer.writeStringValue('status', status);
        writer.writeIntValue('teamCount', teamCount);
    }
}
