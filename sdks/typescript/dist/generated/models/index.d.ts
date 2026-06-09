import { type AdditionalDataHolder, type ApiError, type Parsable, type ParseNode, type SerializationWriter, type UntypedNode } from '@microsoft/kiota-abstractions';
/**
 * Creates a match acceptance request as the API key owner.
 */
export interface AcceptMatchRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Active roster user IDs for the acceptance request.
     */
    activeRoster?: string[] | null;
    /**
     * Optional bench roster users.
     */
    benchRoster?: AcceptMatchRequestBody_benchRoster[] | null;
    /**
     * Optional proposed rule changes.
     */
    disputedRules?: AcceptMatchRequestBody_disputedRules | null;
    /**
     * Optional map preference mode for selected maps.
     */
    mapPreferenceMode?: AcceptMatchRequestBody_mapPreferenceMode | null;
    /**
     * Optional message for the match creator.
     */
    message?: string | null;
    /**
     * Optional proposed map IDs.
     */
    selectedMaps?: string[] | null;
    /**
     * Team ID accepting the match.
     */
    teamId?: string | null;
}
export interface AcceptMatchRequestBody_benchRoster extends AdditionalDataHolder, Parsable {
    /**
     * Bench user ID.
     */
    id?: string | null;
    /**
     * Bench priority.
     */
    priority?: number | null;
}
/**
 * Optional proposed rule changes.
 */
export interface AcceptMatchRequestBody_disputedRules extends AdditionalDataHolder, Parsable {
}
export type AcceptMatchRequestBody_mapPreferenceMode = (typeof AcceptMatchRequestBody_mapPreferenceModeObject)[keyof typeof AcceptMatchRequestBody_mapPreferenceModeObject];
export interface AcceptMatchResponse extends Parsable {
    /**
     * The acceptanceId property
     */
    acceptanceId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface ActivateLeagueSeasonResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Adds a league game.
 */
export interface AddLeagueGameRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Game ID to add to the league.
     */
    gameId?: string | null;
}
/**
 * Adds or reactivates a league staff member.
 */
export interface AddLeagueMemberRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Assignable league staff role. OWNER cannot be assigned through this API.
     */
    role?: AddLeagueMemberRequestBody_role | null;
    /**
     * User ID to add to league staff.
     */
    userId?: string | null;
}
export type AddLeagueMemberRequestBody_role = (typeof AddLeagueMemberRequestBody_roleObject)[keyof typeof AddLeagueMemberRequestBody_roleObject];
export interface AddLeagueMemberResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Adds a reply message to one of the API key owner's tickets.
 */
export interface AddTicketMessageRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Reply message body (max 2000 chars).
     */
    content?: string | null;
    /**
     * Optional storage IDs (from /uploads/image-url) to attach (max 10).
     */
    images?: string[] | null;
}
export interface AddTicketMessageResponse extends Parsable {
    /**
     * Created message ID.
     */
    messageId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Compact live-status row returned by the batch endpoint.
 */
export interface ApiBatchStreamStatus extends Parsable {
    /**
     * User ID.
     */
    id?: string | null;
    /**
     * The isLive property
     */
    isLive?: boolean | null;
    /**
     * The platforms property
     */
    platforms?: StreamPlatform[] | null;
}
/**
 * Batch live-status request body.
 */
export interface ApiBatchStreamStatusBody extends AdditionalDataHolder, Parsable {
    /**
     * User IDs to look up (1-50).
     */
    userIds?: string[] | null;
}
/**
 * Batch live-status results plus a response timestamp. Users not visible to the caller are omitted.
 */
export interface ApiBatchStreamStatusEnvelope extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The statuses property
     */
    statuses?: ApiBatchStreamStatus[] | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Static public game catalog entry.
 */
export interface ApiGameCatalogEntry extends Parsable {
    /**
     * The bannerImage property
     */
    bannerImage?: ApiGameCatalogEntry_bannerImageMember1 | string | null;
    /**
     * The category property
     */
    category?: string | null;
    /**
     * Active Convex games-table ID, when available for match APIs.
     */
    convexId?: ApiGameCatalogEntry_convexIdMember1 | string | null;
    /**
     * The coverImage property
     */
    coverImage?: ApiGameCatalogEntry_coverImageMember1 | string | null;
    /**
     * The defaultTeamSize property
     */
    defaultTeamSize?: number | null;
    /**
     * The descriptionKey property
     */
    descriptionKey?: ApiGameCatalogEntry_descriptionKeyMember1 | string | null;
    /**
     * The hasCompetitiveMode property
     */
    hasCompetitiveMode?: boolean | null;
    /**
     * Static public game ID/slug.
     */
    id?: string | null;
    /**
     * The isAvailableForMatchApi property
     */
    isAvailableForMatchApi?: boolean | null;
    /**
     * The isComingSoon property
     */
    isComingSoon?: boolean | null;
    /**
     * The maps property
     */
    maps?: ApiGameMap[] | null;
    /**
     * The modeMapPools property
     */
    modeMapPools?: ApiGameModeMapPool[] | null;
    /**
     * The modes property
     */
    modes?: ApiGameMode[] | null;
    /**
     * The nameKey property
     */
    nameKey?: string | null;
    /**
     * The playlists property
     */
    playlists?: ApiGamePlaylist[] | null;
    /**
     * The rulesLink property
     */
    rulesLink?: ApiGameCatalogEntry_rulesLinkMember1 | string | null;
    /**
     * The shortNameKey property
     */
    shortNameKey?: ApiGameCatalogEntry_shortNameKeyMember1 | string | null;
}
export type ApiGameCatalogEntry_bannerImage = ApiGameCatalogEntry_bannerImageMember1 | string;
export interface ApiGameCatalogEntry_bannerImageMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameCatalogEntry_convexId = ApiGameCatalogEntry_convexIdMember1 | string;
export interface ApiGameCatalogEntry_convexIdMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameCatalogEntry_coverImage = ApiGameCatalogEntry_coverImageMember1 | string;
export interface ApiGameCatalogEntry_coverImageMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameCatalogEntry_descriptionKey = ApiGameCatalogEntry_descriptionKeyMember1 | string;
export interface ApiGameCatalogEntry_descriptionKeyMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameCatalogEntry_rulesLink = ApiGameCatalogEntry_rulesLinkMember1 | string;
export interface ApiGameCatalogEntry_rulesLinkMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameCatalogEntry_shortNameKey = ApiGameCatalogEntry_shortNameKeyMember1 | string;
export interface ApiGameCatalogEntry_shortNameKeyMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Game catalog list response.
 */
export interface ApiGameCatalogResponse extends Parsable {
    /**
     * The games property
     */
    games?: ApiGameCatalogEntry[] | null;
    /**
     * The objectives property
     */
    objectives?: ApiObjective[] | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Static game map definition.
 */
export interface ApiGameMap extends Parsable {
    /**
     * The coverImage property
     */
    coverImage?: ApiGameMap_coverImageMember1 | string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The isReleased property
     */
    isReleased?: boolean | null;
    /**
     * The minimapImage property
     */
    minimapImage?: ApiGameMap_minimapImageMember1 | string | null;
    /**
     * The nameKey property
     */
    nameKey?: string | null;
}
export type ApiGameMap_coverImage = ApiGameMap_coverImageMember1 | string;
export interface ApiGameMap_coverImageMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameMap_minimapImage = ApiGameMap_minimapImageMember1 | string;
export interface ApiGameMap_minimapImageMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Static game mode definition.
 */
export interface ApiGameMode extends Parsable {
    /**
     * The descriptionKey property
     */
    descriptionKey?: ApiGameMode_descriptionKeyMember1 | string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The image property
     */
    image?: ApiGameMode_imageMember1 | string | null;
    /**
     * The mapIds property
     */
    mapIds?: string[] | null;
    /**
     * The nameKey property
     */
    nameKey?: string | null;
    /**
     * The rewardBonus property
     */
    rewardBonus?: ApiGameMode_rewardBonusMember1 | number | null;
    /**
     * The shortName property
     */
    shortName?: ApiGameMode_shortNameMember1 | string | null;
    /**
     * The supportsDraftToggle property
     */
    supportsDraftToggle?: boolean | null;
}
export type ApiGameMode_descriptionKey = ApiGameMode_descriptionKeyMember1 | string;
export interface ApiGameMode_descriptionKeyMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameMode_image = ApiGameMode_imageMember1 | string;
export interface ApiGameMode_imageMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameMode_rewardBonus = ApiGameMode_rewardBonusMember1 | number;
export interface ApiGameMode_rewardBonusMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameMode_shortName = ApiGameMode_shortNameMember1 | string;
export interface ApiGameMode_shortNameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Game-scoped map pool for a single mode.
 */
export interface ApiGameModeMapPool extends Parsable {
    /**
     * The mapIds property
     */
    mapIds?: string[] | null;
    /**
     * The modeId property
     */
    modeId?: string | null;
}
/**
 * Game-scoped playlist definition.
 */
export interface ApiGamePlaylist extends Parsable {
    /**
     * The allowedGameModeIds property
     */
    allowedGameModeIds?: string[] | null;
    /**
     * The descriptionKey property
     */
    descriptionKey?: ApiGamePlaylist_descriptionKeyMember1 | string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The image property
     */
    image?: ApiGamePlaylist_imageMember1 | string | null;
    /**
     * The nameKey property
     */
    nameKey?: string | null;
}
export type ApiGamePlaylist_descriptionKey = ApiGamePlaylist_descriptionKeyMember1 | string;
export interface ApiGamePlaylist_descriptionKeyMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGamePlaylist_image = ApiGamePlaylist_imageMember1 | string;
export interface ApiGamePlaylist_imageMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Game-scoped playlist response.
 */
export interface ApiGamePlaylistsResponse extends Parsable {
    /**
     * Static public game catalog entry.
     */
    game?: ApiGameCatalogEntry | null;
    /**
     * The playlists property
     */
    playlists?: ApiGamePlaylist[] | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * API-safe game rank entry for the API key owner.
 */
export interface ApiGameRank extends Parsable {
    /**
     * When the rank was first recorded.
     */
    createdAt?: string | null;
    /**
     * Game definition ID this rank belongs to.
     */
    gameId?: string | null;
    /**
     * Game rank row ID.
     */
    id?: string | null;
    /**
     * Whether the player is in the Top 250 ladder.
     */
    isTop250?: boolean | null;
    /**
     * Game mode / playlist the rank is tracked for.
     */
    mode?: string | null;
    /**
     * Origin of the rank: manual entry or an API push.
     */
    source?: ApiGameRank_source | null;
    /**
     * Skill rating, when set.
     */
    sr?: ApiGameRank_srMember1 | number | null;
    /**
     * Top 250 ladder position (1-250), when applicable.
     */
    top250Rank?: ApiGameRank_top250RankMember1 | number | null;
    /**
     * When the rank was last updated.
     */
    updatedAt?: string | null;
    /**
     * Current win streak count.
     */
    winstreak?: number | null;
}
export type ApiGameRank_source = (typeof ApiGameRank_sourceObject)[keyof typeof ApiGameRank_sourceObject];
export type ApiGameRank_sr = ApiGameRank_srMember1 | number;
export interface ApiGameRank_srMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiGameRank_top250Rank = ApiGameRank_top250RankMember1 | number;
export interface ApiGameRank_top250RankMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
 */
export interface ApiMatchDetail extends Parsable {
    /**
     * The acceptedTeam property
     */
    acceptedTeam?: ApiMatchTeam | null;
    /**
     * The bestOf property
     */
    bestOf?: number | null;
    /**
     * The challengedTeam property
     */
    challengedTeam?: ApiMatchTeam | null;
    /**
     * The completedAt property
     */
    completedAt?: ApiMatchDetail_completedAtMember1 | string | null;
    /**
     * The createdAt property
     */
    createdAt?: ApiMatchDetail_createdAtMember1 | string | null;
    /**
     * The creatorTeam property
     */
    creatorTeam?: ApiMatchTeam | null;
    /**
     * Game definition.
     */
    game?: Game | null;
    /**
     * The gameMode property
     */
    gameMode?: string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The leagueId property
     */
    leagueId?: ApiMatchDetail_leagueIdMember1 | string | null;
    /**
     * The leagueSeasonId property
     */
    leagueSeasonId?: ApiMatchDetail_leagueSeasonIdMember1 | string | null;
    /**
     * The matchType property
     */
    matchType?: ApiMatchDetail_matchTypeMember1 | string | null;
    /**
     * The platform property
     */
    platform?: ApiMatchDetail_platformMember1 | string | null;
    /**
     * The publishStatus property
     */
    publishStatus?: string | null;
    /**
     * The region property
     */
    region?: ApiMatchDetail_regionMember1 | string | null;
    /**
     * The scheduledAt property
     */
    scheduledAt?: ApiMatchDetail_scheduledAtMember1 | string | null;
    /**
     * The selectedMaps property
     */
    selectedMaps?: string[] | null;
    /**
     * The selectedObjectives property
     */
    selectedObjectives?: string[] | null;
    /**
     * The startedAt property
     */
    startedAt?: ApiMatchDetail_startedAtMember1 | string | null;
    /**
     * Lifecycle status of a match.
     */
    status?: MatchStatus | null;
    /**
     * The teamSize property
     */
    teamSize?: number | null;
    /**
     * The winnerTeamId property
     */
    winnerTeamId?: ApiMatchDetail_winnerTeamIdMember1 | string | null;
}
export type ApiMatchDetail_completedAt = ApiMatchDetail_completedAtMember1 | string;
export interface ApiMatchDetail_completedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_createdAt = ApiMatchDetail_createdAtMember1 | string;
export interface ApiMatchDetail_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_leagueId = ApiMatchDetail_leagueIdMember1 | string;
export interface ApiMatchDetail_leagueIdMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_leagueSeasonId = ApiMatchDetail_leagueSeasonIdMember1 | string;
export interface ApiMatchDetail_leagueSeasonIdMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_matchType = ApiMatchDetail_matchTypeMember1 | string;
export interface ApiMatchDetail_matchTypeMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_platform = ApiMatchDetail_platformMember1 | string;
export interface ApiMatchDetail_platformMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_region = ApiMatchDetail_regionMember1 | string;
export interface ApiMatchDetail_regionMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_scheduledAt = ApiMatchDetail_scheduledAtMember1 | string;
export interface ApiMatchDetail_scheduledAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_startedAt = ApiMatchDetail_startedAtMember1 | string;
export interface ApiMatchDetail_startedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchDetail_winnerTeamId = ApiMatchDetail_winnerTeamIdMember1 | string;
export interface ApiMatchDetail_winnerTeamIdMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * SP-2 match detail response.
 */
export interface ApiMatchDetailResponse extends Parsable {
    /**
     * Participant-gated SP-2 match detail. Lobby codes are intentionally omitted.
     */
    match?: ApiMatchDetail | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Player row for a participant-gated match.
 */
export interface ApiMatchPlayer extends Parsable {
    /**
     * The attendanceStatus property
     */
    attendanceStatus?: ApiMatchPlayer_attendanceStatus | null;
    /**
     * The avatarUrl property
     */
    avatarUrl?: ApiMatchPlayer_avatarUrlMember1 | string | null;
    /**
     * The checkedInAt property
     */
    checkedInAt?: ApiMatchPlayer_checkedInAtMember1 | string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The isCheckedIn property
     */
    isCheckedIn?: boolean | null;
    /**
     * The name property
     */
    name?: ApiMatchPlayer_nameMember1 | string | null;
    /**
     * The rosterType property
     */
    rosterType?: ApiMatchPlayer_rosterType | null;
    /**
     * The teamId property
     */
    teamId?: string | null;
    /**
     * The userId property
     */
    userId?: string | null;
    /**
     * The username property
     */
    username?: ApiMatchPlayer_usernameMember1 | string | null;
}
export type ApiMatchPlayer_attendanceStatus = (typeof ApiMatchPlayer_attendanceStatusObject)[keyof typeof ApiMatchPlayer_attendanceStatusObject];
export type ApiMatchPlayer_avatarUrl = ApiMatchPlayer_avatarUrlMember1 | string;
export interface ApiMatchPlayer_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchPlayer_checkedInAt = ApiMatchPlayer_checkedInAtMember1 | string;
export interface ApiMatchPlayer_checkedInAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchPlayer_name = ApiMatchPlayer_nameMember1 | string;
export interface ApiMatchPlayer_nameMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchPlayer_rosterType = (typeof ApiMatchPlayer_rosterTypeObject)[keyof typeof ApiMatchPlayer_rosterTypeObject];
export type ApiMatchPlayer_username = ApiMatchPlayer_usernameMember1 | string;
export interface ApiMatchPlayer_usernameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * SP-2 match player rows response.
 */
export interface ApiMatchPlayersResponse extends Parsable {
    /**
     * The matchId property
     */
    matchId?: string | null;
    /**
     * The players property
     */
    players?: ApiMatchPlayer[] | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Team summary embedded in SP-2 match reads.
 */
export interface ApiMatchTeam extends Parsable {
    /**
     * Team avatar URL.
     */
    avatarUrl?: ApiMatchTeam_avatarUrlMember1 | string | null;
    /**
     * Team ID.
     */
    id?: string | null;
    /**
     * Team name.
     */
    name?: string | null;
    /**
     * The score property
     */
    score?: ApiMatchTeam_scoreMember1 | number | null;
    /**
     * Team tag (short identifier).
     */
    tag?: string | null;
}
export type ApiMatchTeam_avatarUrl = ApiMatchTeam_avatarUrlMember1 | string;
export interface ApiMatchTeam_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiMatchTeam_score = ApiMatchTeam_scoreMember1 | number;
export interface ApiMatchTeam_scoreMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe team or organization member.
 */
export interface ApiMember extends Parsable {
    /**
     * Membership row ID.
     */
    id?: string | null;
    /**
     * The joinedAt property
     */
    joinedAt?: ApiMember_joinedAtMember1 | string | null;
    /**
     * Role label within the team or organization.
     */
    role?: string | null;
    /**
     * API-safe public user profile.
     */
    user?: ApiUserProfile | null;
}
export type ApiMember_joinedAt = ApiMember_joinedAtMember1 | string;
export interface ApiMember_joinedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Server-safe objective DTO. UI icon components are intentionally omitted.
 */
export interface ApiObjective extends Parsable {
    /**
     * Machine-readable completion rule.
     */
    completionRule?: string | null;
    /**
     * i18n key for the objective description.
     */
    descriptionKey?: string | null;
    /**
     * Experience awarded by this objective.
     */
    exp?: number | null;
    /**
     * Objective definition ID.
     */
    id?: string | null;
    /**
     * Objective completion scope.
     */
    scope?: string | null;
    /**
     * i18n key for the objective title.
     */
    titleKey?: string | null;
}
/**
 * API-safe organization profile.
 */
export interface ApiOrganizationProfile extends Parsable {
    /**
     * The avatarUrl property
     */
    avatarUrl?: ApiOrganizationProfile_avatarUrlMember1 | string | null;
    /**
     * The bannerUrl property
     */
    bannerUrl?: ApiOrganizationProfile_bannerUrlMember1 | string | null;
    /**
     * The createdAt property
     */
    createdAt?: ApiOrganizationProfile_createdAtMember1 | string | null;
    /**
     * The description property
     */
    description?: ApiOrganizationProfile_descriptionMember1 | string | null;
    /**
     * The draws property
     */
    draws?: number | null;
    /**
     * Organization ID.
     */
    id?: string | null;
    /**
     * The isMember property
     */
    isMember?: boolean | null;
    /**
     * The isVerified property
     */
    isVerified?: boolean | null;
    /**
     * The losses property
     */
    losses?: number | null;
    /**
     * The matchesPlayed property
     */
    matchesPlayed?: number | null;
    /**
     * The memberCount property
     */
    memberCount?: number | null;
    /**
     * Organization name.
     */
    name?: string | null;
    /**
     * The slug property
     */
    slug?: ApiOrganizationProfile_slugMember1 | string | null;
    /**
     * The tag property
     */
    tag?: ApiOrganizationProfile_tagMember1 | string | null;
    /**
     * The teamCount property
     */
    teamCount?: number | null;
    /**
     * Public profile visibility setting.
     */
    visibility?: ProfileVisibility | null;
    /**
     * The wins property
     */
    wins?: number | null;
}
export type ApiOrganizationProfile_avatarUrl = ApiOrganizationProfile_avatarUrlMember1 | string;
export interface ApiOrganizationProfile_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOrganizationProfile_bannerUrl = ApiOrganizationProfile_bannerUrlMember1 | string;
export interface ApiOrganizationProfile_bannerUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOrganizationProfile_createdAt = ApiOrganizationProfile_createdAtMember1 | string;
export interface ApiOrganizationProfile_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOrganizationProfile_description = ApiOrganizationProfile_descriptionMember1 | string;
export interface ApiOrganizationProfile_descriptionMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOrganizationProfile_slug = ApiOrganizationProfile_slugMember1 | string;
export interface ApiOrganizationProfile_slugMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOrganizationProfile_tag = ApiOrganizationProfile_tagMember1 | string;
export interface ApiOrganizationProfile_tagMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe organization aggregate stats.
 */
export interface ApiOrganizationStats extends Parsable {
    /**
     * The losses property
     */
    losses?: number | null;
    /**
     * The matchesPlayed property
     */
    matchesPlayed?: number | null;
    /**
     * The members property
     */
    members?: number | null;
    /**
     * The organizationId property
     */
    organizationId?: string | null;
    /**
     * The teams property
     */
    teams?: number | null;
    /**
     * The winRate property
     */
    winRate?: number | null;
    /**
     * The wins property
     */
    wins?: number | null;
}
/**
 * Small API-safe organization summary.
 */
export interface ApiOrganizationSummary extends Parsable {
    /**
     * The avatarUrl property
     */
    avatarUrl?: ApiOrganizationSummary_avatarUrlMember1 | string | null;
    /**
     * Organization ID.
     */
    id?: string | null;
    /**
     * Organization name.
     */
    name?: string | null;
    /**
     * The slug property
     */
    slug?: ApiOrganizationSummary_slugMember1 | string | null;
    /**
     * The tag property
     */
    tag?: ApiOrganizationSummary_tagMember1 | string | null;
    /**
     * Public profile visibility setting.
     */
    visibility?: ProfileVisibility | null;
}
export type ApiOrganizationSummary_avatarUrl = ApiOrganizationSummary_avatarUrlMember1 | string;
export interface ApiOrganizationSummary_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOrganizationSummary_slug = ApiOrganizationSummary_slugMember1 | string;
export interface ApiOrganizationSummary_slugMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOrganizationSummary_tag = ApiOrganizationSummary_tagMember1 | string;
export interface ApiOrganizationSummary_tagMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe connection for the API key owner, including private fields.
 */
export interface ApiOwnConnection extends Parsable {
    /**
     * The connectedAt property
     */
    connectedAt?: ApiOwnConnection_connectedAtMember1 | string | null;
    /**
     * Gaming platform (e.g. pc / console), when set.
     */
    gamingPlatform?: ApiOwnConnection_gamingPlatformMember1 | string | null;
    /**
     * Connection ID.
     */
    id?: string | null;
    /**
     * The isPrimary property
     */
    isPrimary?: boolean | null;
    /**
     * True when the connection was self-reported (ownership unverified).
     */
    isSelfReported?: boolean | null;
    /**
     * The isVerified property
     */
    isVerified?: boolean | null;
    /**
     * Connected platform.
     */
    platform?: string | null;
    /**
     * Connection region, when set.
     */
    region?: ApiOwnConnection_regionMember1 | string | null;
    /**
     * Whether the owner has chosen to show this connection on their profile.
     */
    showOnProfile?: boolean | null;
    /**
     * The url property
     */
    url?: ApiOwnConnection_urlMember1 | string | null;
    /**
     * The username property
     */
    username?: ApiOwnConnection_usernameMember1 | string | null;
}
export type ApiOwnConnection_connectedAt = ApiOwnConnection_connectedAtMember1 | string;
export interface ApiOwnConnection_connectedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOwnConnection_gamingPlatform = ApiOwnConnection_gamingPlatformMember1 | string;
export interface ApiOwnConnection_gamingPlatformMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOwnConnection_region = ApiOwnConnection_regionMember1 | string;
export interface ApiOwnConnection_regionMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOwnConnection_url = ApiOwnConnection_urlMember1 | string;
export interface ApiOwnConnection_urlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiOwnConnection_username = ApiOwnConnection_usernameMember1 | string;
export interface ApiOwnConnection_usernameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * The user's primary (highest-viewer) live stream.
 */
export interface ApiPrimaryStream extends Parsable {
    /**
     * Game/category being streamed, when known.
     */
    gameName?: ApiPrimaryStream_gameNameMember1 | string | null;
    /**
     * ISO timestamp the user was last observed live, when known.
     */
    lastLiveAt?: ApiPrimaryStream_lastLiveAtMember1 | string | null;
    /**
     * Supported streaming platform.
     */
    platform?: StreamPlatform | null;
    /**
     * Stream start time (platform-provided ISO timestamp), when known.
     */
    startedAt?: ApiPrimaryStream_startedAtMember1 | string | null;
    /**
     * Watch URL, when known.
     */
    streamUrl?: ApiPrimaryStream_streamUrlMember1 | string | null;
    /**
     * Stream thumbnail URL, when known.
     */
    thumbnailUrl?: ApiPrimaryStream_thumbnailUrlMember1 | string | null;
    /**
     * Stream title, when known.
     */
    title?: ApiPrimaryStream_titleMember1 | string | null;
    /**
     * Current viewer count, when known.
     */
    viewerCount?: ApiPrimaryStream_viewerCountMember1 | number | null;
}
export type ApiPrimaryStream_gameName = ApiPrimaryStream_gameNameMember1 | string;
export interface ApiPrimaryStream_gameNameMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiPrimaryStream_lastLiveAt = ApiPrimaryStream_lastLiveAtMember1 | string;
export interface ApiPrimaryStream_lastLiveAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiPrimaryStream_startedAt = ApiPrimaryStream_startedAtMember1 | string;
export interface ApiPrimaryStream_startedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiPrimaryStream_streamUrl = ApiPrimaryStream_streamUrlMember1 | string;
export interface ApiPrimaryStream_streamUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiPrimaryStream_thumbnailUrl = ApiPrimaryStream_thumbnailUrlMember1 | string;
export interface ApiPrimaryStream_thumbnailUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiPrimaryStream_title = ApiPrimaryStream_titleMember1 | string;
export interface ApiPrimaryStream_titleMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiPrimaryStream_viewerCount = ApiPrimaryStream_viewerCountMember1 | number;
export interface ApiPrimaryStream_viewerCountMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe shareable strategy.
 */
export interface ApiStrategy extends Parsable {
    /**
     * The createdAt property
     */
    createdAt?: ApiStrategy_createdAtMember1 | string | null;
    /**
     * Author description, when set.
     */
    description?: ApiStrategy_descriptionMember1 | string | null;
    /**
     * Game slug the strategy targets.
     */
    game?: string | null;
    /**
     * Strategy ID.
     */
    id?: string | null;
    /**
     * Built-in map slug, or the sentinel "__custom" for a custom map.
     */
    mapId?: string | null;
    /**
     * Map render orientation in degrees (0, 90, 180, or 270).
     */
    mapRotation?: number | null;
    /**
     * Strategy name.
     */
    name?: string | null;
    /**
     * Owning user ID.
     */
    ownerId?: string | null;
    /**
     * Whether frame playback wraps from the last stage to the first.
     */
    playbackLoop?: boolean | null;
    /**
     * Freshly signed preview image URL, when a preview has been rendered.
     */
    previewUrl?: ApiStrategy_previewUrlMember1 | string | null;
    /**
     * Public share slug.
     */
    shareSlug?: string | null;
    /**
     * The stageCount property
     */
    stageCount?: number | null;
    /**
     * The stages property
     */
    stages?: ApiStrategyStage[] | null;
    /**
     * The updatedAt property
     */
    updatedAt?: ApiStrategy_updatedAtMember1 | string | null;
    /**
     * Strategy share visibility setting.
     */
    visibility?: StrategyVisibility | null;
}
export type ApiStrategy_createdAt = ApiStrategy_createdAtMember1 | string;
export interface ApiStrategy_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiStrategy_description = ApiStrategy_descriptionMember1 | string;
export interface ApiStrategy_descriptionMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiStrategy_previewUrl = ApiStrategy_previewUrlMember1 | string;
export interface ApiStrategy_previewUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiStrategy_updatedAt = ApiStrategy_updatedAtMember1 | string;
export interface ApiStrategy_updatedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Strategy plus a response timestamp.
 */
export interface ApiStrategyEnvelope extends Parsable {
    /**
     * API-safe shareable strategy.
     */
    strategy?: ApiStrategy | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * API-safe strategy shape. Hidden working shapes are omitted from responses.
 */
export interface ApiStrategyShape extends Parsable {
    /**
     * Opaque shape payload consumed by the canvas renderer.
     */
    data?: UntypedNode | null;
    /**
     * Shape row ID.
     */
    id?: string | null;
    /**
     * Canvas layer the shape renders on.
     */
    layer?: ApiStrategyShape_layer | null;
    /**
     * Stable client-side shape id.
     */
    shapeId?: string | null;
    /**
     * Stage this shape belongs to.
     */
    stageId?: string | null;
    /**
     * Shape primitive type.
     */
    type?: ApiStrategyShape_type | null;
    /**
     * The updatedAt property
     */
    updatedAt?: ApiStrategyShape_updatedAtMember1 | string | null;
    /**
     * Stacking order within its layer.
     */
    zIndex?: number | null;
}
export type ApiStrategyShape_layer = (typeof ApiStrategyShape_layerObject)[keyof typeof ApiStrategyShape_layerObject];
export type ApiStrategyShape_type = (typeof ApiStrategyShape_typeObject)[keyof typeof ApiStrategyShape_typeObject];
export type ApiStrategyShape_updatedAt = ApiStrategyShape_updatedAtMember1 | string;
export interface ApiStrategyShape_updatedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Strategy shapes, count, and a response timestamp.
 */
export interface ApiStrategyShapesEnvelope extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The shapes property
     */
    shapes?: ApiStrategyShape[] | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * A single playback stage of a strategy.
 */
export interface ApiStrategyStage extends Parsable {
    /**
     * Stage playback duration in milliseconds.
     */
    durationMs?: number | null;
    /**
     * Stable stage id within the strategy.
     */
    id?: string | null;
    /**
     * Author stage label, when set.
     */
    label?: ApiStrategyStage_labelMember1 | string | null;
}
export type ApiStrategyStage_label = ApiStrategyStage_labelMember1 | string;
export interface ApiStrategyStage_labelMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe live-stream status for a user.
 */
export interface ApiStreamStatus extends Parsable {
    /**
     * Whether the user is live on any platform.
     */
    isLive?: boolean | null;
    /**
     * Platforms the user is currently live on.
     */
    platforms?: StreamPlatform[] | null;
    /**
     * Primary stream details, or null when offline.
     */
    primaryStream?: ApiPrimaryStream | null;
    /**
     * User ID these stream details belong to.
     */
    userId?: string | null;
}
/**
 * Stream status plus a response timestamp.
 */
export interface ApiStreamStatusEnvelope extends Parsable {
    /**
     * API-safe live-stream status for a user.
     */
    stream?: ApiStreamStatus | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * API-safe team profile.
 */
export interface ApiTeamProfile extends Parsable {
    /**
     * The avatarUrl property
     */
    avatarUrl?: ApiTeamProfile_avatarUrlMember1 | string | null;
    /**
     * The bannerUrl property
     */
    bannerUrl?: ApiTeamProfile_bannerUrlMember1 | string | null;
    /**
     * The createdAt property
     */
    createdAt?: ApiTeamProfile_createdAtMember1 | string | null;
    /**
     * The description property
     */
    description?: ApiTeamProfile_descriptionMember1 | string | null;
    /**
     * The draws property
     */
    draws?: number | null;
    /**
     * The experience property
     */
    experience?: number | null;
    /**
     * The gameId property
     */
    gameId?: ApiTeamProfile_gameIdMember1 | string | null;
    /**
     * Team ID.
     */
    id?: string | null;
    /**
     * The isMember property
     */
    isMember?: boolean | null;
    /**
     * The losses property
     */
    losses?: number | null;
    /**
     * The matchesPlayed property
     */
    matchesPlayed?: number | null;
    /**
     * The memberCount property
     */
    memberCount?: number | null;
    /**
     * Team name.
     */
    name?: string | null;
    /**
     * The organizationId property
     */
    organizationId?: ApiTeamProfile_organizationIdMember1 | string | null;
    /**
     * The slug property
     */
    slug?: ApiTeamProfile_slugMember1 | string | null;
    /**
     * The tag property
     */
    tag?: ApiTeamProfile_tagMember1 | string | null;
    /**
     * Public profile visibility setting.
     */
    visibility?: ProfileVisibility | null;
    /**
     * The wins property
     */
    wins?: number | null;
}
export type ApiTeamProfile_avatarUrl = ApiTeamProfile_avatarUrlMember1 | string;
export interface ApiTeamProfile_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamProfile_bannerUrl = ApiTeamProfile_bannerUrlMember1 | string;
export interface ApiTeamProfile_bannerUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamProfile_createdAt = ApiTeamProfile_createdAtMember1 | string;
export interface ApiTeamProfile_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamProfile_description = ApiTeamProfile_descriptionMember1 | string;
export interface ApiTeamProfile_descriptionMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamProfile_gameId = ApiTeamProfile_gameIdMember1 | string;
export interface ApiTeamProfile_gameIdMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamProfile_organizationId = ApiTeamProfile_organizationIdMember1 | string;
export interface ApiTeamProfile_organizationIdMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamProfile_slug = ApiTeamProfile_slugMember1 | string;
export interface ApiTeamProfile_slugMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamProfile_tag = ApiTeamProfile_tagMember1 | string;
export interface ApiTeamProfile_tagMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Small API-safe team summary.
 */
export interface ApiTeamSummary extends Parsable {
    /**
     * The avatarUrl property
     */
    avatarUrl?: ApiTeamSummary_avatarUrlMember1 | string | null;
    /**
     * Team ID.
     */
    id?: string | null;
    /**
     * Team name.
     */
    name?: string | null;
    /**
     * The slug property
     */
    slug?: ApiTeamSummary_slugMember1 | string | null;
    /**
     * The tag property
     */
    tag?: ApiTeamSummary_tagMember1 | string | null;
    /**
     * Public profile visibility setting.
     */
    visibility?: ProfileVisibility | null;
}
export type ApiTeamSummary_avatarUrl = ApiTeamSummary_avatarUrlMember1 | string;
export interface ApiTeamSummary_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamSummary_slug = ApiTeamSummary_slugMember1 | string;
export interface ApiTeamSummary_slugMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiTeamSummary_tag = ApiTeamSummary_tagMember1 | string;
export interface ApiTeamSummary_tagMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe public account connection.
 */
export interface ApiUserConnection extends Parsable {
    /**
     * The connectedAt property
     */
    connectedAt?: ApiUserConnection_connectedAtMember1 | string | null;
    /**
     * Connection ID.
     */
    id?: string | null;
    /**
     * The isPrimary property
     */
    isPrimary?: boolean | null;
    /**
     * The isVerified property
     */
    isVerified?: boolean | null;
    /**
     * Connected platform.
     */
    platform?: string | null;
    /**
     * The url property
     */
    url?: ApiUserConnection_urlMember1 | string | null;
    /**
     * The username property
     */
    username?: ApiUserConnection_usernameMember1 | string | null;
}
export type ApiUserConnection_connectedAt = ApiUserConnection_connectedAtMember1 | string;
export interface ApiUserConnection_connectedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserConnection_url = ApiUserConnection_urlMember1 | string;
export interface ApiUserConnection_urlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserConnection_username = ApiUserConnection_usernameMember1 | string;
export interface ApiUserConnection_usernameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe organization affiliation row on a user profile.
 */
export interface ApiUserOrganizationMembership extends Parsable {
    /**
     * The avatarUrl property
     */
    avatarUrl?: ApiUserOrganizationMembership_avatarUrlMember1 | string | null;
    /**
     * Organization ID.
     */
    id?: string | null;
    /**
     * The joinedAt property
     */
    joinedAt?: ApiUserOrganizationMembership_joinedAtMember1 | string | null;
    /**
     * Organization name.
     */
    name?: string | null;
    /**
     * The role property
     */
    role?: string | null;
    /**
     * The slug property
     */
    slug?: ApiUserOrganizationMembership_slugMember1 | string | null;
    /**
     * The tag property
     */
    tag?: ApiUserOrganizationMembership_tagMember1 | string | null;
    /**
     * Public profile visibility setting.
     */
    visibility?: ProfileVisibility | null;
}
export type ApiUserOrganizationMembership_avatarUrl = ApiUserOrganizationMembership_avatarUrlMember1 | string;
export interface ApiUserOrganizationMembership_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserOrganizationMembership_joinedAt = ApiUserOrganizationMembership_joinedAtMember1 | string;
export interface ApiUserOrganizationMembership_joinedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserOrganizationMembership_slug = ApiUserOrganizationMembership_slugMember1 | string;
export interface ApiUserOrganizationMembership_slugMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserOrganizationMembership_tag = ApiUserOrganizationMembership_tagMember1 | string;
export interface ApiUserOrganizationMembership_tagMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe public user profile.
 */
export interface ApiUserProfile extends Parsable {
    /**
     * Avatar image URL, when set.
     */
    avatarUrl?: ApiUserProfile_avatarUrlMember1 | string | null;
    /**
     * Banner image URL, when set.
     */
    bannerUrl?: ApiUserProfile_bannerUrlMember1 | string | null;
    /**
     * Public profile bio.
     */
    bio?: ApiUserProfile_bioMember1 | string | null;
    /**
     * The createdAt property
     */
    createdAt?: ApiUserProfile_createdAtMember1 | string | null;
    /**
     * User ID.
     */
    id?: string | null;
    /**
     * The isVerified property
     */
    isVerified?: boolean | null;
    /**
     * Display name, when set.
     */
    name?: ApiUserProfile_nameMember1 | string | null;
    /**
     * User handle, when set.
     */
    username?: ApiUserProfile_usernameMember1 | string | null;
    /**
     * Public profile visibility setting.
     */
    visibility?: ProfileVisibility | null;
}
export type ApiUserProfile_avatarUrl = ApiUserProfile_avatarUrlMember1 | string;
export interface ApiUserProfile_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserProfile_bannerUrl = ApiUserProfile_bannerUrlMember1 | string;
export interface ApiUserProfile_bannerUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserProfile_bio = ApiUserProfile_bioMember1 | string;
export interface ApiUserProfile_bioMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserProfile_createdAt = ApiUserProfile_createdAtMember1 | string;
export interface ApiUserProfile_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserProfile_name = ApiUserProfile_nameMember1 | string;
export interface ApiUserProfile_nameMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserProfile_username = ApiUserProfile_usernameMember1 | string;
export interface ApiUserProfile_usernameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe aggregate user stats.
 */
export interface ApiUserStats extends Parsable {
    /**
     * The bestStreak property
     */
    bestStreak?: number | null;
    /**
     * The currentStreak property
     */
    currentStreak?: number | null;
    /**
     * The draws property
     */
    draws?: number | null;
    /**
     * The experience property
     */
    experience?: number | null;
    /**
     * The losses property
     */
    losses?: number | null;
    /**
     * The matchesPlayed property
     */
    matchesPlayed?: number | null;
    /**
     * User ID these stats belong to.
     */
    userId?: string | null;
    /**
     * The winRate property
     */
    winRate?: number | null;
    /**
     * The wins property
     */
    wins?: number | null;
}
/**
 * API-safe team affiliation row on a user profile.
 */
export interface ApiUserTeamMembership extends Parsable {
    /**
     * The avatarUrl property
     */
    avatarUrl?: ApiUserTeamMembership_avatarUrlMember1 | string | null;
    /**
     * Team ID.
     */
    id?: string | null;
    /**
     * The joinedAt property
     */
    joinedAt?: ApiUserTeamMembership_joinedAtMember1 | string | null;
    /**
     * Team name.
     */
    name?: string | null;
    /**
     * The organization property
     */
    organization?: ApiOrganizationSummary | null;
    /**
     * The role property
     */
    role?: string | null;
    /**
     * The slug property
     */
    slug?: ApiUserTeamMembership_slugMember1 | string | null;
    /**
     * The tag property
     */
    tag?: ApiUserTeamMembership_tagMember1 | string | null;
    /**
     * Public profile visibility setting.
     */
    visibility?: ProfileVisibility | null;
}
export type ApiUserTeamMembership_avatarUrl = ApiUserTeamMembership_avatarUrlMember1 | string;
export interface ApiUserTeamMembership_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserTeamMembership_joinedAt = ApiUserTeamMembership_joinedAtMember1 | string;
export interface ApiUserTeamMembership_joinedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserTeamMembership_slug = ApiUserTeamMembership_slugMember1 | string;
export interface ApiUserTeamMembership_slugMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserTeamMembership_tag = ApiUserTeamMembership_tagMember1 | string;
export interface ApiUserTeamMembership_tagMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * API-safe user trophy. Event linkage fields are intentionally omitted.
 */
export interface ApiUserTrophy extends Parsable {
    /**
     * The awardedAt property
     */
    awardedAt?: ApiUserTrophy_awardedAtMember1 | string | null;
    /**
     * The description property
     */
    description?: ApiUserTrophy_descriptionMember1 | string | null;
    /**
     * The iconUrl property
     */
    iconUrl?: ApiUserTrophy_iconUrlMember1 | string | null;
    /**
     * Trophy award ID.
     */
    id?: string | null;
    /**
     * The rarity property
     */
    rarity?: ApiUserTrophy_rarityMember1 | string | null;
    /**
     * The title property
     */
    title?: ApiUserTrophy_titleMember1 | string | null;
    /**
     * Trophy definition ID.
     */
    trophyId?: string | null;
}
export type ApiUserTrophy_awardedAt = ApiUserTrophy_awardedAtMember1 | string;
export interface ApiUserTrophy_awardedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserTrophy_description = ApiUserTrophy_descriptionMember1 | string;
export interface ApiUserTrophy_descriptionMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserTrophy_iconUrl = ApiUserTrophy_iconUrlMember1 | string;
export interface ApiUserTrophy_iconUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserTrophy_rarity = ApiUserTrophy_rarityMember1 | string;
export interface ApiUserTrophy_rarityMember1 extends AdditionalDataHolder, Parsable {
}
export type ApiUserTrophy_title = ApiUserTrophy_titleMember1 | string;
export interface ApiUserTrophy_titleMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Applies a rule template.
 */
export interface ApplyRuleTemplateRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Game ID to apply the template to.
     */
    gameId?: string | null;
    /**
     * League rule template ID.
     */
    templateId?: string | null;
}
export interface ApplyRuleTemplateResponse extends Parsable {
    /**
     * The rulesId property
     */
    rulesId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface ApproveLeagueTeamResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Status filter for league team bans.
 */
export interface BansRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Filter bans by computed status. Defaults to all.
     */
    status?: BansRequestBody_status | null;
}
export type BansRequestBody_status = (typeof BansRequestBody_statusObject)[keyof typeof BansRequestBody_statusObject];
/**
 * Cancels the match as the API key owner.
 */
export interface CancelMatchRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional cancellation reason.
     */
    reason?: string | null;
}
export interface CancelMatchResponse extends Parsable {
    /**
     * The matchId property
     */
    matchId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface ChatMessage extends Parsable {
    /**
     * The content property
     */
    content?: string | null;
    /**
     * The createdAt property
     */
    createdAt?: ChatMessage_createdAtMember1 | string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The replyToId property
     */
    replyToId?: ChatMessage_replyToIdMember1 | string | null;
    /**
     * The senderUserId property
     */
    senderUserId?: string | null;
    /**
     * The senderUsername property
     */
    senderUsername?: ChatMessage_senderUsernameMember1 | string | null;
    /**
     * The teamId property
     */
    teamId?: string | null;
}
export type ChatMessage_createdAt = ChatMessage_createdAtMember1 | string;
export interface ChatMessage_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type ChatMessage_replyToId = ChatMessage_replyToIdMember1 | string;
export interface ChatMessage_replyToIdMember1 extends AdditionalDataHolder, Parsable {
}
export type ChatMessage_senderUsername = ChatMessage_senderUsernameMember1 | string;
export interface ChatMessage_senderUsernameMember1 extends AdditionalDataHolder, Parsable {
}
export interface ClearCooldownResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface CompleteLeagueSeasonResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Confirmation payload identifying the map score to confirm.
 */
export interface ConfirmScoreBody extends AdditionalDataHolder, Parsable {
    /**
     * Zero-based map index to confirm. Must be a non-negative integer.
     */
    mapIndex?: number | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AcceptMatchRequestBody_benchRoster}
 */
export declare function createAcceptMatchRequestBody_benchRosterFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AcceptMatchRequestBody_disputedRules}
 */
export declare function createAcceptMatchRequestBody_disputedRulesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AcceptMatchRequestBody}
 */
export declare function createAcceptMatchRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AcceptMatchResponse}
 */
export declare function createAcceptMatchResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ActivateLeagueSeasonResponse}
 */
export declare function createActivateLeagueSeasonResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AddLeagueGameRequestBody}
 */
export declare function createAddLeagueGameRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AddLeagueMemberRequestBody}
 */
export declare function createAddLeagueMemberRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AddLeagueMemberResponse}
 */
export declare function createAddLeagueMemberResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AddTicketMessageRequestBody}
 */
export declare function createAddTicketMessageRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {AddTicketMessageResponse}
 */
export declare function createAddTicketMessageResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiBatchStreamStatusBody}
 */
export declare function createApiBatchStreamStatusBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiBatchStreamStatusEnvelope}
 */
export declare function createApiBatchStreamStatusEnvelopeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiBatchStreamStatus}
 */
export declare function createApiBatchStreamStatusFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_bannerImageMember1 | string}
 */
export declare function createApiGameCatalogEntry_bannerImageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_bannerImageMember1}
 */
export declare function createApiGameCatalogEntry_bannerImageMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_convexIdMember1 | string}
 */
export declare function createApiGameCatalogEntry_convexIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_convexIdMember1}
 */
export declare function createApiGameCatalogEntry_convexIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_coverImageMember1 | string}
 */
export declare function createApiGameCatalogEntry_coverImageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_coverImageMember1}
 */
export declare function createApiGameCatalogEntry_coverImageMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_descriptionKeyMember1 | string}
 */
export declare function createApiGameCatalogEntry_descriptionKeyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_descriptionKeyMember1}
 */
export declare function createApiGameCatalogEntry_descriptionKeyMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_rulesLinkMember1 | string}
 */
export declare function createApiGameCatalogEntry_rulesLinkFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_rulesLinkMember1}
 */
export declare function createApiGameCatalogEntry_rulesLinkMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_shortNameKeyMember1 | string}
 */
export declare function createApiGameCatalogEntry_shortNameKeyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry_shortNameKeyMember1}
 */
export declare function createApiGameCatalogEntry_shortNameKeyMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogEntry}
 */
export declare function createApiGameCatalogEntryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameCatalogResponse}
 */
export declare function createApiGameCatalogResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMap_coverImageMember1 | string}
 */
export declare function createApiGameMap_coverImageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMap_coverImageMember1}
 */
export declare function createApiGameMap_coverImageMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMap_minimapImageMember1 | string}
 */
export declare function createApiGameMap_minimapImageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMap_minimapImageMember1}
 */
export declare function createApiGameMap_minimapImageMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMap}
 */
export declare function createApiGameMapFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_descriptionKeyMember1 | string}
 */
export declare function createApiGameMode_descriptionKeyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_descriptionKeyMember1}
 */
export declare function createApiGameMode_descriptionKeyMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_imageMember1 | string}
 */
export declare function createApiGameMode_imageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_imageMember1}
 */
export declare function createApiGameMode_imageMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_rewardBonusMember1 | number}
 */
export declare function createApiGameMode_rewardBonusFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_rewardBonusMember1}
 */
export declare function createApiGameMode_rewardBonusMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_shortNameMember1 | string}
 */
export declare function createApiGameMode_shortNameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode_shortNameMember1}
 */
export declare function createApiGameMode_shortNameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameMode}
 */
export declare function createApiGameModeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameModeMapPool}
 */
export declare function createApiGameModeMapPoolFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGamePlaylist_descriptionKeyMember1 | string}
 */
export declare function createApiGamePlaylist_descriptionKeyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGamePlaylist_descriptionKeyMember1}
 */
export declare function createApiGamePlaylist_descriptionKeyMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGamePlaylist_imageMember1 | string}
 */
export declare function createApiGamePlaylist_imageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGamePlaylist_imageMember1}
 */
export declare function createApiGamePlaylist_imageMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGamePlaylist}
 */
export declare function createApiGamePlaylistFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGamePlaylistsResponse}
 */
export declare function createApiGamePlaylistsResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameRank_srMember1 | number}
 */
export declare function createApiGameRank_srFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameRank_srMember1}
 */
export declare function createApiGameRank_srMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameRank_top250RankMember1 | number}
 */
export declare function createApiGameRank_top250RankFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameRank_top250RankMember1}
 */
export declare function createApiGameRank_top250RankMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiGameRank}
 */
export declare function createApiGameRankFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_completedAtMember1 | string}
 */
export declare function createApiMatchDetail_completedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_completedAtMember1}
 */
export declare function createApiMatchDetail_completedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_createdAtMember1 | string}
 */
export declare function createApiMatchDetail_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_createdAtMember1}
 */
export declare function createApiMatchDetail_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_leagueIdMember1 | string}
 */
export declare function createApiMatchDetail_leagueIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_leagueIdMember1}
 */
export declare function createApiMatchDetail_leagueIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_leagueSeasonIdMember1 | string}
 */
export declare function createApiMatchDetail_leagueSeasonIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_leagueSeasonIdMember1}
 */
export declare function createApiMatchDetail_leagueSeasonIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_matchTypeMember1 | string}
 */
export declare function createApiMatchDetail_matchTypeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_matchTypeMember1}
 */
export declare function createApiMatchDetail_matchTypeMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_platformMember1 | string}
 */
export declare function createApiMatchDetail_platformFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_platformMember1}
 */
export declare function createApiMatchDetail_platformMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_regionMember1 | string}
 */
export declare function createApiMatchDetail_regionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_regionMember1}
 */
export declare function createApiMatchDetail_regionMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_scheduledAtMember1 | string}
 */
export declare function createApiMatchDetail_scheduledAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_scheduledAtMember1}
 */
export declare function createApiMatchDetail_scheduledAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_startedAtMember1 | string}
 */
export declare function createApiMatchDetail_startedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_startedAtMember1}
 */
export declare function createApiMatchDetail_startedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_winnerTeamIdMember1 | string}
 */
export declare function createApiMatchDetail_winnerTeamIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail_winnerTeamIdMember1}
 */
export declare function createApiMatchDetail_winnerTeamIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetail}
 */
export declare function createApiMatchDetailFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchDetailResponse}
 */
export declare function createApiMatchDetailResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_avatarUrlMember1 | string}
 */
export declare function createApiMatchPlayer_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_avatarUrlMember1}
 */
export declare function createApiMatchPlayer_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_checkedInAtMember1 | string}
 */
export declare function createApiMatchPlayer_checkedInAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_checkedInAtMember1}
 */
export declare function createApiMatchPlayer_checkedInAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_nameMember1 | string}
 */
export declare function createApiMatchPlayer_nameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_nameMember1}
 */
export declare function createApiMatchPlayer_nameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_usernameMember1 | string}
 */
export declare function createApiMatchPlayer_usernameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer_usernameMember1}
 */
export declare function createApiMatchPlayer_usernameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayer}
 */
export declare function createApiMatchPlayerFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchPlayersResponse}
 */
export declare function createApiMatchPlayersResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchTeam_avatarUrlMember1 | string}
 */
export declare function createApiMatchTeam_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchTeam_avatarUrlMember1}
 */
export declare function createApiMatchTeam_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchTeam_scoreMember1 | number}
 */
export declare function createApiMatchTeam_scoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchTeam_scoreMember1}
 */
export declare function createApiMatchTeam_scoreMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMatchTeam}
 */
export declare function createApiMatchTeamFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMember_joinedAtMember1 | string}
 */
export declare function createApiMember_joinedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMember_joinedAtMember1}
 */
export declare function createApiMember_joinedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiMember}
 */
export declare function createApiMemberFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiObjective}
 */
export declare function createApiObjectiveFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_avatarUrlMember1 | string}
 */
export declare function createApiOrganizationProfile_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_avatarUrlMember1}
 */
export declare function createApiOrganizationProfile_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_bannerUrlMember1 | string}
 */
export declare function createApiOrganizationProfile_bannerUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_bannerUrlMember1}
 */
export declare function createApiOrganizationProfile_bannerUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_createdAtMember1 | string}
 */
export declare function createApiOrganizationProfile_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_createdAtMember1}
 */
export declare function createApiOrganizationProfile_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_descriptionMember1 | string}
 */
export declare function createApiOrganizationProfile_descriptionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_descriptionMember1}
 */
export declare function createApiOrganizationProfile_descriptionMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_slugMember1 | string}
 */
export declare function createApiOrganizationProfile_slugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_slugMember1}
 */
export declare function createApiOrganizationProfile_slugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_tagMember1 | string}
 */
export declare function createApiOrganizationProfile_tagFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile_tagMember1}
 */
export declare function createApiOrganizationProfile_tagMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationProfile}
 */
export declare function createApiOrganizationProfileFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationStats}
 */
export declare function createApiOrganizationStatsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationSummary_avatarUrlMember1 | string}
 */
export declare function createApiOrganizationSummary_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationSummary_avatarUrlMember1}
 */
export declare function createApiOrganizationSummary_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationSummary_slugMember1 | string}
 */
export declare function createApiOrganizationSummary_slugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationSummary_slugMember1}
 */
export declare function createApiOrganizationSummary_slugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationSummary_tagMember1 | string}
 */
export declare function createApiOrganizationSummary_tagFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationSummary_tagMember1}
 */
export declare function createApiOrganizationSummary_tagMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOrganizationSummary}
 */
export declare function createApiOrganizationSummaryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_connectedAtMember1 | string}
 */
export declare function createApiOwnConnection_connectedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_connectedAtMember1}
 */
export declare function createApiOwnConnection_connectedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_gamingPlatformMember1 | string}
 */
export declare function createApiOwnConnection_gamingPlatformFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_gamingPlatformMember1}
 */
export declare function createApiOwnConnection_gamingPlatformMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_regionMember1 | string}
 */
export declare function createApiOwnConnection_regionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_regionMember1}
 */
export declare function createApiOwnConnection_regionMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_urlMember1 | string}
 */
export declare function createApiOwnConnection_urlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_urlMember1}
 */
export declare function createApiOwnConnection_urlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_usernameMember1 | string}
 */
export declare function createApiOwnConnection_usernameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection_usernameMember1}
 */
export declare function createApiOwnConnection_usernameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiOwnConnection}
 */
export declare function createApiOwnConnectionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_gameNameMember1 | string}
 */
export declare function createApiPrimaryStream_gameNameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_gameNameMember1}
 */
export declare function createApiPrimaryStream_gameNameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_lastLiveAtMember1 | string}
 */
export declare function createApiPrimaryStream_lastLiveAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_lastLiveAtMember1}
 */
export declare function createApiPrimaryStream_lastLiveAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_startedAtMember1 | string}
 */
export declare function createApiPrimaryStream_startedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_startedAtMember1}
 */
export declare function createApiPrimaryStream_startedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_streamUrlMember1 | string}
 */
export declare function createApiPrimaryStream_streamUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_streamUrlMember1}
 */
export declare function createApiPrimaryStream_streamUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_thumbnailUrlMember1 | string}
 */
export declare function createApiPrimaryStream_thumbnailUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_thumbnailUrlMember1}
 */
export declare function createApiPrimaryStream_thumbnailUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_titleMember1 | string}
 */
export declare function createApiPrimaryStream_titleFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_titleMember1}
 */
export declare function createApiPrimaryStream_titleMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_viewerCountMember1 | number}
 */
export declare function createApiPrimaryStream_viewerCountFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream_viewerCountMember1}
 */
export declare function createApiPrimaryStream_viewerCountMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiPrimaryStream}
 */
export declare function createApiPrimaryStreamFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_createdAtMember1 | string}
 */
export declare function createApiStrategy_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_createdAtMember1}
 */
export declare function createApiStrategy_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_descriptionMember1 | string}
 */
export declare function createApiStrategy_descriptionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_descriptionMember1}
 */
export declare function createApiStrategy_descriptionMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_previewUrlMember1 | string}
 */
export declare function createApiStrategy_previewUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_previewUrlMember1}
 */
export declare function createApiStrategy_previewUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_updatedAtMember1 | string}
 */
export declare function createApiStrategy_updatedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy_updatedAtMember1}
 */
export declare function createApiStrategy_updatedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyEnvelope}
 */
export declare function createApiStrategyEnvelopeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategy}
 */
export declare function createApiStrategyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyShape_updatedAtMember1 | string}
 */
export declare function createApiStrategyShape_updatedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyShape_updatedAtMember1}
 */
export declare function createApiStrategyShape_updatedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyShape}
 */
export declare function createApiStrategyShapeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyShapesEnvelope}
 */
export declare function createApiStrategyShapesEnvelopeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyStage_labelMember1 | string}
 */
export declare function createApiStrategyStage_labelFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyStage_labelMember1}
 */
export declare function createApiStrategyStage_labelMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStrategyStage}
 */
export declare function createApiStrategyStageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStreamStatusEnvelope}
 */
export declare function createApiStreamStatusEnvelopeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiStreamStatus}
 */
export declare function createApiStreamStatusFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_avatarUrlMember1 | string}
 */
export declare function createApiTeamProfile_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_avatarUrlMember1}
 */
export declare function createApiTeamProfile_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_bannerUrlMember1 | string}
 */
export declare function createApiTeamProfile_bannerUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_bannerUrlMember1}
 */
export declare function createApiTeamProfile_bannerUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_createdAtMember1 | string}
 */
export declare function createApiTeamProfile_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_createdAtMember1}
 */
export declare function createApiTeamProfile_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_descriptionMember1 | string}
 */
export declare function createApiTeamProfile_descriptionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_descriptionMember1}
 */
export declare function createApiTeamProfile_descriptionMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_gameIdMember1 | string}
 */
export declare function createApiTeamProfile_gameIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_gameIdMember1}
 */
export declare function createApiTeamProfile_gameIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_organizationIdMember1 | string}
 */
export declare function createApiTeamProfile_organizationIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_organizationIdMember1}
 */
export declare function createApiTeamProfile_organizationIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_slugMember1 | string}
 */
export declare function createApiTeamProfile_slugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_slugMember1}
 */
export declare function createApiTeamProfile_slugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_tagMember1 | string}
 */
export declare function createApiTeamProfile_tagFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile_tagMember1}
 */
export declare function createApiTeamProfile_tagMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamProfile}
 */
export declare function createApiTeamProfileFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamSummary_avatarUrlMember1 | string}
 */
export declare function createApiTeamSummary_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamSummary_avatarUrlMember1}
 */
export declare function createApiTeamSummary_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamSummary_slugMember1 | string}
 */
export declare function createApiTeamSummary_slugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamSummary_slugMember1}
 */
export declare function createApiTeamSummary_slugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamSummary_tagMember1 | string}
 */
export declare function createApiTeamSummary_tagFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamSummary_tagMember1}
 */
export declare function createApiTeamSummary_tagMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiTeamSummary}
 */
export declare function createApiTeamSummaryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserConnection_connectedAtMember1 | string}
 */
export declare function createApiUserConnection_connectedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserConnection_connectedAtMember1}
 */
export declare function createApiUserConnection_connectedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserConnection_urlMember1 | string}
 */
export declare function createApiUserConnection_urlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserConnection_urlMember1}
 */
export declare function createApiUserConnection_urlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserConnection_usernameMember1 | string}
 */
export declare function createApiUserConnection_usernameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserConnection_usernameMember1}
 */
export declare function createApiUserConnection_usernameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserConnection}
 */
export declare function createApiUserConnectionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_avatarUrlMember1 | string}
 */
export declare function createApiUserOrganizationMembership_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_avatarUrlMember1}
 */
export declare function createApiUserOrganizationMembership_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_joinedAtMember1 | string}
 */
export declare function createApiUserOrganizationMembership_joinedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_joinedAtMember1}
 */
export declare function createApiUserOrganizationMembership_joinedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_slugMember1 | string}
 */
export declare function createApiUserOrganizationMembership_slugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_slugMember1}
 */
export declare function createApiUserOrganizationMembership_slugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_tagMember1 | string}
 */
export declare function createApiUserOrganizationMembership_tagFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership_tagMember1}
 */
export declare function createApiUserOrganizationMembership_tagMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserOrganizationMembership}
 */
export declare function createApiUserOrganizationMembershipFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_avatarUrlMember1 | string}
 */
export declare function createApiUserProfile_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_avatarUrlMember1}
 */
export declare function createApiUserProfile_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_bannerUrlMember1 | string}
 */
export declare function createApiUserProfile_bannerUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_bannerUrlMember1}
 */
export declare function createApiUserProfile_bannerUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_bioMember1 | string}
 */
export declare function createApiUserProfile_bioFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_bioMember1}
 */
export declare function createApiUserProfile_bioMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_createdAtMember1 | string}
 */
export declare function createApiUserProfile_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_createdAtMember1}
 */
export declare function createApiUserProfile_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_nameMember1 | string}
 */
export declare function createApiUserProfile_nameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_nameMember1}
 */
export declare function createApiUserProfile_nameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_usernameMember1 | string}
 */
export declare function createApiUserProfile_usernameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile_usernameMember1}
 */
export declare function createApiUserProfile_usernameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserProfile}
 */
export declare function createApiUserProfileFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserStats}
 */
export declare function createApiUserStatsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_avatarUrlMember1 | string}
 */
export declare function createApiUserTeamMembership_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_avatarUrlMember1}
 */
export declare function createApiUserTeamMembership_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_joinedAtMember1 | string}
 */
export declare function createApiUserTeamMembership_joinedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_joinedAtMember1}
 */
export declare function createApiUserTeamMembership_joinedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_slugMember1 | string}
 */
export declare function createApiUserTeamMembership_slugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_slugMember1}
 */
export declare function createApiUserTeamMembership_slugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_tagMember1 | string}
 */
export declare function createApiUserTeamMembership_tagFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership_tagMember1}
 */
export declare function createApiUserTeamMembership_tagMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTeamMembership}
 */
export declare function createApiUserTeamMembershipFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_awardedAtMember1 | string}
 */
export declare function createApiUserTrophy_awardedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_awardedAtMember1}
 */
export declare function createApiUserTrophy_awardedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_descriptionMember1 | string}
 */
export declare function createApiUserTrophy_descriptionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_descriptionMember1}
 */
export declare function createApiUserTrophy_descriptionMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_iconUrlMember1 | string}
 */
export declare function createApiUserTrophy_iconUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_iconUrlMember1}
 */
export declare function createApiUserTrophy_iconUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_rarityMember1 | string}
 */
export declare function createApiUserTrophy_rarityFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_rarityMember1}
 */
export declare function createApiUserTrophy_rarityMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_titleMember1 | string}
 */
export declare function createApiUserTrophy_titleFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy_titleMember1}
 */
export declare function createApiUserTrophy_titleMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApiUserTrophy}
 */
export declare function createApiUserTrophyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApplyRuleTemplateRequestBody}
 */
export declare function createApplyRuleTemplateRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApplyRuleTemplateResponse}
 */
export declare function createApplyRuleTemplateResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ApproveLeagueTeamResponse}
 */
export declare function createApproveLeagueTeamResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a league team ban.
 */
export interface CreateBanRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Expiration timestamp for temporary bans, in epoch milliseconds.
     */
    expiresAt?: number | null;
    /**
     * Whether the ban never expires.
     */
    isPermanent?: boolean | null;
    /**
     * Reason for the ban.
     */
    reason?: string | null;
    /**
     * Team ID to ban from the league.
     */
    teamId?: string | null;
}
export interface CreateBanResponse extends Parsable {
    /**
     * Created league ban ID.
     */
    banId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {BansRequestBody}
 */
export declare function createBansRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CancelMatchRequestBody}
 */
export declare function createCancelMatchRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CancelMatchResponse}
 */
export declare function createCancelMatchResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatMessage_createdAtMember1 | string}
 */
export declare function createChatMessage_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatMessage_createdAtMember1}
 */
export declare function createChatMessage_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatMessage_replyToIdMember1 | string}
 */
export declare function createChatMessage_replyToIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatMessage_replyToIdMember1}
 */
export declare function createChatMessage_replyToIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatMessage_senderUsernameMember1 | string}
 */
export declare function createChatMessage_senderUsernameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatMessage_senderUsernameMember1}
 */
export declare function createChatMessage_senderUsernameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatMessage}
 */
export declare function createChatMessageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ClearCooldownResponse}
 */
export declare function createClearCooldownResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CompleteLeagueSeasonResponse}
 */
export declare function createCompleteLeagueSeasonResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ConfirmScoreBody}
 */
export declare function createConfirmScoreBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateBanRequestBody}
 */
export declare function createCreateBanRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateBanResponse}
 */
export declare function createCreateBanResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateLeagueTicketRequestBody}
 */
export declare function createCreateLeagueTicketRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateLeagueTicketResponse}
 */
export declare function createCreateLeagueTicketResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateMatchRequestBody_benchRoster}
 */
export declare function createCreateMatchRequestBody_benchRosterFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateMatchRequestBody_gameSpecificOptions}
 */
export declare function createCreateMatchRequestBody_gameSpecificOptionsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateMatchRequestBody_lockedRules}
 */
export declare function createCreateMatchRequestBody_lockedRulesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateMatchRequestBody}
 */
export declare function createCreateMatchRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateMatchResponse}
 */
export declare function createCreateMatchResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreatePenaltyRequestBody}
 */
export declare function createCreatePenaltyRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreatePenaltyResponse}
 */
export declare function createCreatePenaltyResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateSeasonRequestBody}
 */
export declare function createCreateSeasonRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateSeasonResponse}
 */
export declare function createCreateSeasonResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateTicketRequestBody}
 */
export declare function createCreateTicketRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateTicketResponse}
 */
export declare function createCreateTicketResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {CreateWebhookBody}
 */
export declare function createCreateWebhookBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {DeleteLeagueSeasonResponse}
 */
export declare function createDeleteLeagueSeasonResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {DenyLeagueTeamRequestBody}
 */
export declare function createDenyLeagueTeamRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {DenyLeagueTeamResponse}
 */
export declare function createDenyLeagueTeamResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {DiscoverLeaguesRequestBody}
 */
export declare function createDiscoverLeaguesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ErrorEscaped}
 */
export declare function createErrorEscapedFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {EscalateLeagueTicketRequestBody}
 */
export declare function createEscalateLeagueTicketRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {EscalateLeagueTicketResponse}
 */
export declare function createEscalateLeagueTicketResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ForfeitMatchRequestBody}
 */
export declare function createForfeitMatchRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ForfeitMatchResponse}
 */
export declare function createForfeitMatchResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameBatchMatchScoreResult}
 */
export declare function createGameBatchMatchScoreResultFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameBatchMatchScoresBody}
 */
export declare function createGameBatchMatchScoresBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameBatchMatchScoresResponse}
 */
export declare function createGameBatchMatchScoresResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameBatchScoreResult}
 */
export declare function createGameBatchScoreResultFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameBatchScoresBody}
 */
export declare function createGameBatchScoresBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameBatchScoresResponse}
 */
export declare function createGameBatchScoresResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameCreateMatchBody}
 */
export declare function createGameCreateMatchBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameCreateMatchResponse}
 */
export declare function createGameCreateMatchResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameDetailTeam}
 */
export declare function createGameDetailTeamFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameForfeitBody}
 */
export declare function createGameForfeitBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameForfeitResponse}
 */
export declare function createGameForfeitResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {Game}
 */
export declare function createGameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMapScoreInput_playerStats}
 */
export declare function createGameMapScoreInput_playerStatsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMapScoreInput}
 */
export declare function createGameMapScoreInputFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_acceptedTeamScoreMember1 | number}
 */
export declare function createGameMatch_acceptedTeamScoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_acceptedTeamScoreMember1}
 */
export declare function createGameMatch_acceptedTeamScoreMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_completedAtMember1 | string}
 */
export declare function createGameMatch_completedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_completedAtMember1}
 */
export declare function createGameMatch_completedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_createdAtMember1 | string}
 */
export declare function createGameMatch_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_createdAtMember1}
 */
export declare function createGameMatch_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_creatorTeamScoreMember1 | number}
 */
export declare function createGameMatch_creatorTeamScoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_creatorTeamScoreMember1}
 */
export declare function createGameMatch_creatorTeamScoreMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_scheduledAtMember1 | string}
 */
export declare function createGameMatch_scheduledAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_scheduledAtMember1}
 */
export declare function createGameMatch_scheduledAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_startedAtMember1 | string}
 */
export declare function createGameMatch_startedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch_startedAtMember1}
 */
export declare function createGameMatch_startedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_acceptedTeamScoreMember1 | number}
 */
export declare function createGameMatchDetail_acceptedTeamScoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_acceptedTeamScoreMember1}
 */
export declare function createGameMatchDetail_acceptedTeamScoreMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_completedAtMember1 | string}
 */
export declare function createGameMatchDetail_completedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_completedAtMember1}
 */
export declare function createGameMatchDetail_completedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_createdAtMember1 | string}
 */
export declare function createGameMatchDetail_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_createdAtMember1}
 */
export declare function createGameMatchDetail_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_creatorTeamScoreMember1 | number}
 */
export declare function createGameMatchDetail_creatorTeamScoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_creatorTeamScoreMember1}
 */
export declare function createGameMatchDetail_creatorTeamScoreMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_leagueIdMember1 | string}
 */
export declare function createGameMatchDetail_leagueIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_leagueIdMember1}
 */
export declare function createGameMatchDetail_leagueIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_leagueSeasonIdMember1 | string}
 */
export declare function createGameMatchDetail_leagueSeasonIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_leagueSeasonIdMember1}
 */
export declare function createGameMatchDetail_leagueSeasonIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_loserTeamIdMember1 | string}
 */
export declare function createGameMatchDetail_loserTeamIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_loserTeamIdMember1}
 */
export declare function createGameMatchDetail_loserTeamIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_scheduledAtMember1 | string}
 */
export declare function createGameMatchDetail_scheduledAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_scheduledAtMember1}
 */
export declare function createGameMatchDetail_scheduledAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_startedAtMember1 | string}
 */
export declare function createGameMatchDetail_startedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_startedAtMember1}
 */
export declare function createGameMatchDetail_startedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_winnerTeamIdMember1 | string}
 */
export declare function createGameMatchDetail_winnerTeamIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail_winnerTeamIdMember1}
 */
export declare function createGameMatchDetail_winnerTeamIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetail}
 */
export declare function createGameMatchDetailFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchDetailResponse}
 */
export declare function createGameMatchDetailResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatch}
 */
export declare function createGameMatchFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchRostersResponse_acceptedTeamIdMember1 | string}
 */
export declare function createGameMatchRostersResponse_acceptedTeamIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchRostersResponse_acceptedTeamIdMember1}
 */
export declare function createGameMatchRostersResponse_acceptedTeamIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMatchRostersResponse}
 */
export declare function createGameMatchRostersResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMultiMatchScoreItem_playerStats}
 */
export declare function createGameMultiMatchScoreItem_playerStatsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameMultiMatchScoreItem}
 */
export declare function createGameMultiMatchScoreItemFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GamePlayerStatsBody_playerStats}
 */
export declare function createGamePlayerStatsBody_playerStatsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GamePlayerStatsBody}
 */
export declare function createGamePlayerStatsBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GamePlayerStatsResponse}
 */
export declare function createGamePlayerStatsResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRankDeleteResponse}
 */
export declare function createGameRankDeleteResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRankListResponse}
 */
export declare function createGameRankListResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRankUpsertBody}
 */
export declare function createGameRankUpsertBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRankUpsertResponse}
 */
export declare function createGameRankUpsertResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRosterPlayer_nameMember1 | string}
 */
export declare function createGameRosterPlayer_nameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRosterPlayer_nameMember1}
 */
export declare function createGameRosterPlayer_nameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRosterPlayer_usernameMember1 | string}
 */
export declare function createGameRosterPlayer_usernameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRosterPlayer_usernameMember1}
 */
export declare function createGameRosterPlayer_usernameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameRosterPlayer}
 */
export declare function createGameRosterPlayerFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameScore_confirmedAtMember1 | string}
 */
export declare function createGameScore_confirmedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameScore_confirmedAtMember1}
 */
export declare function createGameScore_confirmedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameScore_submittedAtMember1 | string}
 */
export declare function createGameScore_submittedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameScore_submittedAtMember1}
 */
export declare function createGameScore_submittedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameScore}
 */
export declare function createGameScoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameScoresResponse}
 */
export declare function createGameScoresResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameSeriesScore}
 */
export declare function createGameSeriesScoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameSingleMapScoreBody_playerStats}
 */
export declare function createGameSingleMapScoreBody_playerStatsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameSingleMapScoreBody}
 */
export declare function createGameSingleMapScoreBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameSingleMapScoreResponse}
 */
export declare function createGameSingleMapScoreResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameStatusUpdateBody}
 */
export declare function createGameStatusUpdateBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {GameStatusUpdateResponse}
 */
export declare function createGameStatusUpdateResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ImageUploadUrlResponse}
 */
export declare function createImageUploadUrlResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {IssueCooldownRequestBody}
 */
export declare function createIssueCooldownRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {IssueCooldownResponse}
 */
export declare function createIssueCooldownResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaderboardRankResponse_gameSlugMember1 | string}
 */
export declare function createLeaderboardRankResponse_gameSlugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaderboardRankResponse_gameSlugMember1}
 */
export declare function createLeaderboardRankResponse_gameSlugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {number | LeaderboardRankResponse_rankMember1}
 */
export declare function createLeaderboardRankResponse_rankFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaderboardRankResponse_rankMember1}
 */
export declare function createLeaderboardRankResponse_rankMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaderboardRankResponse}
 */
export declare function createLeaderboardRankResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaderboardStats}
 */
export declare function createLeaderboardStatsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueActivityFeedRequestBody_cursorMember1 | string}
 */
export declare function createLeagueActivityFeedRequestBody_cursorFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueActivityFeedRequestBody_cursorMember1}
 */
export declare function createLeagueActivityFeedRequestBody_cursorMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueActivityFeedRequestBody}
 */
export declare function createLeagueActivityFeedRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueActivityFeedResponse}
 */
export declare function createLeagueActivityFeedResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueApplyEligibility_eligibility_eligibleTeams}
 */
export declare function createLeagueApplyEligibility_eligibility_eligibleTeamsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueApplyEligibility_eligibility_pendingTeams}
 */
export declare function createLeagueApplyEligibility_eligibility_pendingTeamsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueApplyEligibility_eligibility}
 */
export declare function createLeagueApplyEligibility_eligibilityFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueApplyEligibility}
 */
export declare function createLeagueApplyEligibilityFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueApplyEligibilityRequestBody}
 */
export declare function createLeagueApplyEligibilityRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueBans_bans}
 */
export declare function createLeagueBans_bansFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueBans}
 */
export declare function createLeagueBansFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueBrandingSocials}
 */
export declare function createLeagueBrandingSocialsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueDashboardStatsResponse_stats}
 */
export declare function createLeagueDashboardStatsResponse_statsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueDashboardStatsResponse}
 */
export declare function createLeagueDashboardStatsResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueDisplayRules_displayRules}
 */
export declare function createLeagueDisplayRules_displayRulesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueDisplayRules}
 */
export declare function createLeagueDisplayRulesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueDisplayRulesRequestBody}
 */
export declare function createLeagueDisplayRulesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueGames_games}
 */
export declare function createLeagueGames_gamesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueGames}
 */
export declare function createLeagueGamesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueGameWriteResponse}
 */
export declare function createLeagueGameWriteResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueMembers_members}
 */
export declare function createLeagueMembers_membersFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueMembers}
 */
export declare function createLeagueMembersFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaguePenalties_cooldowns}
 */
export declare function createLeaguePenalties_cooldownsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaguePenalties_penalties}
 */
export declare function createLeaguePenalties_penaltiesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaguePenalties}
 */
export declare function createLeaguePenaltiesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfile_activeSeasons}
 */
export declare function createLeagueProfile_activeSeasonsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfile_avatarUrlMember1 | string}
 */
export declare function createLeagueProfile_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfile_avatarUrlMember1}
 */
export declare function createLeagueProfile_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfile_bannerUrlMember1 | string}
 */
export declare function createLeagueProfile_bannerUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfile_bannerUrlMember1}
 */
export declare function createLeagueProfile_bannerUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfile_games}
 */
export declare function createLeagueProfile_gamesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfile}
 */
export declare function createLeagueProfileFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueProfileResponse}
 */
export declare function createLeagueProfileResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueRules}
 */
export declare function createLeagueRulesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeason_season}
 */
export declare function createLeagueSeason_seasonFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeason}
 */
export declare function createLeagueSeasonFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeasonOptions_defaultSeasonIdMember1 | string}
 */
export declare function createLeagueSeasonOptions_defaultSeasonIdFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeasonOptions_defaultSeasonIdMember1}
 */
export declare function createLeagueSeasonOptions_defaultSeasonIdMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeasonOptions_seasons}
 */
export declare function createLeagueSeasonOptions_seasonsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeasonOptions}
 */
export declare function createLeagueSeasonOptionsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeasonOptionsRequestBody}
 */
export declare function createLeagueSeasonOptionsRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeasons_seasons}
 */
export declare function createLeagueSeasons_seasonsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSeasons}
 */
export declare function createLeagueSeasonsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSettingsResponse_league}
 */
export declare function createLeagueSettingsResponse_leagueFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSettingsResponse}
 */
export declare function createLeagueSettingsResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueStandings_standings}
 */
export declare function createLeagueStandings_standingsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueStandings}
 */
export declare function createLeagueStandingsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueStatusUpdateBody}
 */
export declare function createLeagueStatusUpdateBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSummary_avatarUrlMember1 | string}
 */
export declare function createLeagueSummary_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSummary_avatarUrlMember1}
 */
export declare function createLeagueSummary_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSummary_bannerUrlMember1 | string}
 */
export declare function createLeagueSummary_bannerUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSummary_bannerUrlMember1}
 */
export declare function createLeagueSummary_bannerUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSummary_games}
 */
export declare function createLeagueSummary_gamesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueSummary}
 */
export declare function createLeagueSummaryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueTemplates_templates}
 */
export declare function createLeagueTemplates_templatesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueTemplates}
 */
export declare function createLeagueTemplatesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeagueTemplatesRequestBody}
 */
export declare function createLeagueTemplatesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a league-scoped support ticket.
 */
export interface CreateLeagueTicketRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The description property
     */
    description?: string | null;
    /**
     * The priority property
     */
    priority?: CreateLeagueTicketRequestBody_priority | null;
    /**
     * The subject property
     */
    subject?: string | null;
}
export type CreateLeagueTicketRequestBody_priority = (typeof CreateLeagueTicketRequestBody_priorityObject)[keyof typeof CreateLeagueTicketRequestBody_priorityObject];
export interface CreateLeagueTicketResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Created ticket ID.
     */
    ticketId?: string | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ListGameMatchesBody}
 */
export declare function createListGameMatchesBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MapScoreItem_createdAtMember1 | string}
 */
export declare function createMapScoreItem_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MapScoreItem_createdAtMember1}
 */
export declare function createMapScoreItem_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MapScoreItem}
 */
export declare function createMapScoreItemFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MapScores_seriesScore}
 */
export declare function createMapScores_seriesScoreFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MapScores}
 */
export declare function createMapScoresFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MarkMatchReadyRequestBody}
 */
export declare function createMarkMatchReadyRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MarkMatchReadyResponse}
 */
export declare function createMarkMatchReadyResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchDiscoverBody_cursorMember1 | string}
 */
export declare function createMatchDiscoverBody_cursorFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchDiscoverBody_cursorMember1}
 */
export declare function createMatchDiscoverBody_cursorMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchDiscoverBody}
 */
export declare function createMatchDiscoverBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchDiscoverPage_nextCursorMember1 | string}
 */
export declare function createMatchDiscoverPage_nextCursorFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchDiscoverPage_nextCursorMember1}
 */
export declare function createMatchDiscoverPage_nextCursorMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchDiscoverPage}
 */
export declare function createMatchDiscoverPageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchesRequestBody_cursorMember1 | string}
 */
export declare function createMatchesRequestBody_cursorFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchesRequestBody_cursorMember1}
 */
export declare function createMatchesRequestBody_cursorMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchesRequestBody}
 */
export declare function createMatchesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new match as the API key owner.
 */
export interface CreateMatchRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Active roster user IDs (must be creator-team members).
     */
    activeRoster?: string[] | null;
    /**
     * Optional bench roster.
     */
    benchRoster?: CreateMatchRequestBody_benchRoster[] | null;
    /**
     * Series length (best of N).
     */
    bestOf?: number | null;
    /**
     * Challenged team ID (required when isChallenge is true).
     */
    challengedTeamId?: string | null;
    /**
     * Game ID for the match.
     */
    gameId?: string | null;
    /**
     * Game mode ID (client-side definition).
     */
    gameModeId?: string | null;
    /**
     * Game-specific options.
     */
    gameSpecificOptions?: CreateMatchRequestBody_gameSpecificOptions | null;
    /**
     * Input device (defaults to ALL).
     */
    inputDevice?: CreateMatchRequestBody_inputDevice | null;
    /**
     * Create as a direct challenge to another team.
     */
    isChallenge?: boolean | null;
    /**
     * League ID for a league match.
     */
    leagueId?: string | null;
    /**
     * Locked rule flags.
     */
    lockedRules?: CreateMatchRequestBody_lockedRules | null;
    /**
     * Map preference mode.
     */
    mapPreferenceMode?: CreateMatchRequestBody_mapPreferenceMode | null;
    /**
     * Map selection type.
     */
    mapSelectionType?: CreateMatchRequestBody_mapSelectionType | null;
    /**
     * Match type.
     */
    matchType?: CreateMatchRequestBody_matchType | null;
    /**
     * Optional match notes.
     */
    notes?: string | null;
    /**
     * Platform (defaults to CROSSPLAY).
     */
    platform?: CreateMatchRequestBody_platform | null;
    /**
     * Publish status (defaults to DRAFT).
     */
    publishStatus?: CreateMatchRequestBody_publishStatus | null;
    /**
     * Region (defaults to NONE).
     */
    region?: CreateMatchRequestBody_region | null;
    /**
     * Scheduled start (epoch ms).
     */
    scheduledAt?: number | null;
    /**
     * Selected map IDs.
     */
    selectedMaps?: string[] | null;
    /**
     * Selected objective IDs.
     */
    selectedObjectives?: string[] | null;
    /**
     * Creator team ID. The owner must captain it.
     */
    teamId?: string | null;
    /**
     * Players per team.
     */
    teamSize?: number | null;
    /**
     * Wager amount (WAGER matches only).
     */
    wagerAmount?: number | null;
}
export interface CreateMatchRequestBody_benchRoster extends AdditionalDataHolder, Parsable {
    /**
     * Bench user ID.
     */
    id?: string | null;
    /**
     * Bench priority.
     */
    priority?: number | null;
}
/**
 * Game-specific options.
 */
export interface CreateMatchRequestBody_gameSpecificOptions extends AdditionalDataHolder, Parsable {
}
export type CreateMatchRequestBody_inputDevice = (typeof CreateMatchRequestBody_inputDeviceObject)[keyof typeof CreateMatchRequestBody_inputDeviceObject];
/**
 * Locked rule flags.
 */
export interface CreateMatchRequestBody_lockedRules extends AdditionalDataHolder, Parsable {
}
export type CreateMatchRequestBody_mapPreferenceMode = (typeof CreateMatchRequestBody_mapPreferenceModeObject)[keyof typeof CreateMatchRequestBody_mapPreferenceModeObject];
export type CreateMatchRequestBody_mapSelectionType = (typeof CreateMatchRequestBody_mapSelectionTypeObject)[keyof typeof CreateMatchRequestBody_mapSelectionTypeObject];
export type CreateMatchRequestBody_matchType = (typeof CreateMatchRequestBody_matchTypeObject)[keyof typeof CreateMatchRequestBody_matchTypeObject];
export type CreateMatchRequestBody_platform = (typeof CreateMatchRequestBody_platformObject)[keyof typeof CreateMatchRequestBody_platformObject];
export type CreateMatchRequestBody_publishStatus = (typeof CreateMatchRequestBody_publishStatusObject)[keyof typeof CreateMatchRequestBody_publishStatusObject];
export type CreateMatchRequestBody_region = (typeof CreateMatchRequestBody_regionObject)[keyof typeof CreateMatchRequestBody_regionObject];
export interface CreateMatchResponse extends Parsable {
    /**
     * The matchId property
     */
    matchId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OngoingMatchesResponse}
 */
export declare function createOngoingMatchesResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationLeaderboardEntry_gameSlugMember1 | string}
 */
export declare function createOrganizationLeaderboardEntry_gameSlugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationLeaderboardEntry_gameSlugMember1}
 */
export declare function createOrganizationLeaderboardEntry_gameSlugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationLeaderboardEntry_stats}
 */
export declare function createOrganizationLeaderboardEntry_statsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationLeaderboardEntry}
 */
export declare function createOrganizationLeaderboardEntryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationLeaderboardResponse_gameSlugMember1 | string}
 */
export declare function createOrganizationLeaderboardResponse_gameSlugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationLeaderboardResponse_gameSlugMember1}
 */
export declare function createOrganizationLeaderboardResponse_gameSlugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationLeaderboardResponse}
 */
export declare function createOrganizationLeaderboardResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {PenaltiesRequestBody}
 */
export declare function createPenaltiesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a league team penalty.
 */
export interface CreatePenaltyRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Game ID for the league penalty.
     */
    gameId?: string | null;
    /**
     * Reason for the penalty.
     */
    reason?: string | null;
    /**
     * Optional league season ID for the penalty.
     */
    seasonId?: string | null;
    /**
     * Team ID receiving the penalty.
     */
    teamId?: string | null;
    /**
     * Penalty type.
     */
    type?: CreatePenaltyRequestBody_type | null;
    /**
     * Point value for POINT_DEDUCTION (integer, 1-1000).
     */
    value?: number | null;
}
export type CreatePenaltyRequestBody_type = (typeof CreatePenaltyRequestBody_typeObject)[keyof typeof CreatePenaltyRequestBody_typeObject];
export interface CreatePenaltyResponse extends Parsable {
    /**
     * Created league penalty ID.
     */
    penaltyId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {PlayerLeaderboardEntry}
 */
export declare function createPlayerLeaderboardEntryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {PlayerLeaderboardResponse}
 */
export declare function createPlayerLeaderboardResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RemoveDisplayRuleResponse}
 */
export declare function createRemoveDisplayRuleResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RemoveLeagueGameResponse}
 */
export declare function createRemoveLeagueGameResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RemoveLeagueMemberResponse}
 */
export declare function createRemoveLeagueMemberResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RemoveLeagueTeamRequestBody}
 */
export declare function createRemoveLeagueTeamRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RemoveLeagueTeamResponse}
 */
export declare function createRemoveLeagueTeamResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ReorderDisplayRulesRequestBody_items}
 */
export declare function createReorderDisplayRulesRequestBody_itemsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ReorderDisplayRulesRequestBody}
 */
export declare function createReorderDisplayRulesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ReorderDisplayRulesResponse}
 */
export declare function createReorderDisplayRulesResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ReplyLeagueTicketRequestBody}
 */
export declare function createReplyLeagueTicketRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ReplyLeagueTicketResponse}
 */
export declare function createReplyLeagueTicketResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ReportChatMessageRequestBody}
 */
export declare function createReportChatMessageRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ReportChatMessageResponse}
 */
export declare function createReportChatMessageResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RequestLeagueShutdownResponse}
 */
export declare function createRequestLeagueShutdownResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RevokeBanRequestBody}
 */
export declare function createRevokeBanRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RevokeBanResponse}
 */
export declare function createRevokeBanResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RulesRequestBody}
 */
export declare function createRulesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {RuleWriteResponse}
 */
export declare function createRuleWriteResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ScoreConfirmer_confirmedAtMember1 | string}
 */
export declare function createScoreConfirmer_confirmedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ScoreConfirmer_confirmedAtMember1}
 */
export declare function createScoreConfirmer_confirmedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ScoreConfirmer}
 */
export declare function createScoreConfirmerFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ScoreSubmissionResult}
 */
export declare function createScoreSubmissionResultFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ScoreSubmitter_nameMember1 | string}
 */
export declare function createScoreSubmitter_nameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ScoreSubmitter_nameMember1}
 */
export declare function createScoreSubmitter_nameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ScoreSubmitter}
 */
export declare function createScoreSubmitterFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * League season creation payload.
 */
export interface CreateSeasonRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Season end timestamp in milliseconds.
     */
    endDate?: number | null;
    /**
     * Game ID the season belongs to.
     */
    gameId?: string | null;
    /**
     * Season name.
     */
    name?: string | null;
    /**
     * Season start timestamp in milliseconds.
     */
    startDate?: number | null;
}
export interface CreateSeasonResponse extends Parsable {
    /**
     * The seasonId property
     */
    seasonId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {SeasonsRequestBody}
 */
export declare function createSeasonsRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {SendChatMessageRequestBody}
 */
export declare function createSendChatMessageRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {SendChatMessageResponse}
 */
export declare function createSendChatMessageResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {SetLeagueEnabledRequestBody}
 */
export declare function createSetLeagueEnabledRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {SetLeagueEnabledResponse}
 */
export declare function createSetLeagueEnabledResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {StandingsRequestBody}
 */
export declare function createStandingsRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {SubmitScoreBody}
 */
export declare function createSubmitScoreBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | Team_avatarUrlMember1}
 */
export declare function createTeam_avatarUrlFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {Team_avatarUrlMember1}
 */
export declare function createTeam_avatarUrlMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {Team}
 */
export declare function createTeamFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TeamLeaderboardEntry_gameSlugMember1}
 */
export declare function createTeamLeaderboardEntry_gameSlugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TeamLeaderboardEntry_gameSlugMember1}
 */
export declare function createTeamLeaderboardEntry_gameSlugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TeamLeaderboardEntry}
 */
export declare function createTeamLeaderboardEntryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TeamLeaderboardResponse_gameSlugMember1}
 */
export declare function createTeamLeaderboardResponse_gameSlugFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TeamLeaderboardResponse_gameSlugMember1}
 */
export declare function createTeamLeaderboardResponse_gameSlugMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TeamLeaderboardResponse}
 */
export declare function createTeamLeaderboardResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketDetail_closedAtMember1}
 */
export declare function createTicketDetail_closedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketDetail_closedAtMember1}
 */
export declare function createTicketDetail_closedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketDetail_createdAtMember1}
 */
export declare function createTicketDetail_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketDetail_createdAtMember1}
 */
export declare function createTicketDetail_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketDetail_messages_createdAtMember1}
 */
export declare function createTicketDetail_messages_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketDetail_messages_createdAtMember1}
 */
export declare function createTicketDetail_messages_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketDetail_messages}
 */
export declare function createTicketDetail_messagesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketDetail_resolvedAtMember1}
 */
export declare function createTicketDetail_resolvedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketDetail_resolvedAtMember1}
 */
export declare function createTicketDetail_resolvedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketDetail_updatedAtMember1}
 */
export declare function createTicketDetail_updatedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketDetail_updatedAtMember1}
 */
export declare function createTicketDetail_updatedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketDetail}
 */
export declare function createTicketDetailFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a self-filed support ticket owned by the API key owner.
 */
export interface CreateTicketRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Support category. Entity-bound and staff-only categories are rejected.
     */
    category?: CreateTicketRequestBody_category | null;
    /**
     * Initial message / description (max 2000 chars).
     */
    description?: string | null;
    /**
     * Optional storage IDs (from /uploads/image-url) to attach (max 10).
     */
    images?: string[] | null;
    /**
     * Ticket subject (max 150 chars).
     */
    subject?: string | null;
}
export type CreateTicketRequestBody_category = (typeof CreateTicketRequestBody_categoryObject)[keyof typeof CreateTicketRequestBody_categoryObject];
export interface CreateTicketResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Created ticket ID.
     */
    ticketId?: string | null;
    /**
     * Human-facing sequential ticket number.
     */
    ticketNumber?: number | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketSummary_createdAtMember1}
 */
export declare function createTicketSummary_createdAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketSummary_createdAtMember1}
 */
export declare function createTicketSummary_createdAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketSummary_updatedAtMember1}
 */
export declare function createTicketSummary_updatedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketSummary_updatedAtMember1}
 */
export declare function createTicketSummary_updatedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketSummary}
 */
export declare function createTicketSummaryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ToggleLeagueGameRequestBody}
 */
export declare function createToggleLeagueGameRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ToggleLeagueGameResponse}
 */
export declare function createToggleLeagueGameResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TransferLeagueOwnershipRequestBody}
 */
export declare function createTransferLeagueOwnershipRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TransferLeagueOwnershipResponse}
 */
export declare function createTransferLeagueOwnershipResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TwitchBadgeSet}
 */
export declare function createTwitchBadgeSetFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TwitchBadgeVersion}
 */
export declare function createTwitchBadgeVersionFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TwitchChannelBadges_broadcaster_idMember1}
 */
export declare function createTwitchChannelBadges_broadcaster_idFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TwitchChannelBadges_broadcaster_idMember1}
 */
export declare function createTwitchChannelBadges_broadcaster_idMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TwitchChannelBadges_broadcaster_nameMember1}
 */
export declare function createTwitchChannelBadges_broadcaster_nameFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TwitchChannelBadges_broadcaster_nameMember1}
 */
export declare function createTwitchChannelBadges_broadcaster_nameMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TwitchChannelBadges}
 */
export declare function createTwitchChannelBadgesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TwitchGlobalBadges}
 */
export declare function createTwitchGlobalBadgesFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateAttendanceRequestBody}
 */
export declare function createUpdateAttendanceRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateAttendanceResponse}
 */
export declare function createUpdateAttendanceResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateGameRulesRequestBody_allowedTimeRange}
 */
export declare function createUpdateGameRulesRequestBody_allowedTimeRangeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateGameRulesRequestBody_rosterChangeWindowTime}
 */
export declare function createUpdateGameRulesRequestBody_rosterChangeWindowTimeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateGameRulesRequestBody_teamSize}
 */
export declare function createUpdateGameRulesRequestBody_teamSizeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateGameRulesRequestBody}
 */
export declare function createUpdateGameRulesRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueBrandingRequestBody}
 */
export declare function createUpdateLeagueBrandingRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueBrandingResponse}
 */
export declare function createUpdateLeagueBrandingResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueCooldownConfigRequestBody}
 */
export declare function createUpdateLeagueCooldownConfigRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueCooldownConfigResponse}
 */
export declare function createUpdateLeagueCooldownConfigResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueMemberRoleRequestBody}
 */
export declare function createUpdateLeagueMemberRoleRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueMemberRoleResponse}
 */
export declare function createUpdateLeagueMemberRoleResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | UpdateLeagueTicketRequestBody_assignedToMember1}
 */
export declare function createUpdateLeagueTicketRequestBody_assignedToFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueTicketRequestBody_assignedToMember1}
 */
export declare function createUpdateLeagueTicketRequestBody_assignedToMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueTicketRequestBody}
 */
export declare function createUpdateLeagueTicketRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLeagueTicketResponse}
 */
export declare function createUpdateLeagueTicketResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLobbyCodeRequestBody}
 */
export declare function createUpdateLobbyCodeRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateLobbyCodeResponse}
 */
export declare function createUpdateLobbyCodeResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdatePointsConfigRequestBody_streakBreakpoints}
 */
export declare function createUpdatePointsConfigRequestBody_streakBreakpointsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdatePointsConfigRequestBody}
 */
export declare function createUpdatePointsConfigRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdatePointsConfigResponse}
 */
export declare function createUpdatePointsConfigResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpdateWebhookBody}
 */
export declare function createUpdateWebhookBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpsertDisplayRuleRequestBody_content_sections}
 */
export declare function createUpsertDisplayRuleRequestBody_content_sectionsFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpsertDisplayRuleRequestBody_content}
 */
export declare function createUpsertDisplayRuleRequestBody_contentFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpsertDisplayRuleRequestBody_scope}
 */
export declare function createUpsertDisplayRuleRequestBody_scopeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpsertDisplayRuleRequestBody}
 */
export declare function createUpsertDisplayRuleRequestBodyFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UpsertDisplayRuleResponse}
 */
export declare function createUpsertDisplayRuleResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | UserMatch_completedAtMember1}
 */
export declare function createUserMatch_completedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UserMatch_completedAtMember1}
 */
export declare function createUserMatch_completedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | UserMatch_scheduledAtMember1}
 */
export declare function createUserMatch_scheduledAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UserMatch_scheduledAtMember1}
 */
export declare function createUserMatch_scheduledAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | UserMatch_startedAtMember1}
 */
export declare function createUserMatch_startedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UserMatch_startedAtMember1}
 */
export declare function createUserMatch_startedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {UserMatch}
 */
export declare function createUserMatchFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Create a webhook endpoint in the caller's scope.
 */
export interface CreateWebhookBody extends AdditionalDataHolder, Parsable {
    /**
     * Subscribed event tokens: exact catalog names (e.g. match.completed) or family wildcards (e.g. match.*). At least one required.
     */
    events?: string[] | null;
    /**
     * Optional human label for the endpoint.
     */
    label?: string | null;
    /**
     * HTTPS endpoint URL. Private/loopback/metadata hosts are rejected.
     */
    url?: string | null;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {number | WebhookDelivery_deliveredAtMember1}
 */
export declare function createWebhookDelivery_deliveredAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookDelivery_deliveredAtMember1}
 */
export declare function createWebhookDelivery_deliveredAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | WebhookDelivery_errorMessageMember1}
 */
export declare function createWebhookDelivery_errorMessageFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookDelivery_errorMessageMember1}
 */
export declare function createWebhookDelivery_errorMessageMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {number | WebhookDelivery_nextAttemptAtMember1}
 */
export declare function createWebhookDelivery_nextAttemptAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookDelivery_nextAttemptAtMember1}
 */
export declare function createWebhookDelivery_nextAttemptAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {number | WebhookDelivery_statusCodeMember1}
 */
export declare function createWebhookDelivery_statusCodeFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookDelivery_statusCodeMember1}
 */
export declare function createWebhookDelivery_statusCodeMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookDelivery}
 */
export declare function createWebhookDeliveryFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | WebhookEndpoint_labelMember1}
 */
export declare function createWebhookEndpoint_labelFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookEndpoint_labelMember1}
 */
export declare function createWebhookEndpoint_labelMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {number | WebhookEndpoint_lastDeliveredAtMember1}
 */
export declare function createWebhookEndpoint_lastDeliveredAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookEndpoint_lastDeliveredAtMember1}
 */
export declare function createWebhookEndpoint_lastDeliveredAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {number | WebhookEndpoint_lastFailedAtMember1}
 */
export declare function createWebhookEndpoint_lastFailedAtFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookEndpoint_lastFailedAtMember1}
 */
export declare function createWebhookEndpoint_lastFailedAtMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookEndpoint}
 */
export declare function createWebhookEndpointFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookListResponse}
 */
export declare function createWebhookListResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookOk}
 */
export declare function createWebhookOkFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookReplayResult}
 */
export declare function createWebhookReplayResultFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookSecret}
 */
export declare function createWebhookSecretFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WebhookTestResult}
 */
export declare function createWebhookTestResultFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
export interface DeleteLeagueSeasonResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Denies a pending league team application.
 */
export interface DenyLeagueTeamRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional denial reason shown to the team's captain.
     */
    reason?: string | null;
}
export interface DenyLeagueTeamResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * The deserialization information for the current model
 * @param AcceptMatchRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAcceptMatchRequestBody(acceptMatchRequestBody?: Partial<AcceptMatchRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AcceptMatchRequestBody_benchRoster The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAcceptMatchRequestBody_benchRoster(acceptMatchRequestBody_benchRoster?: Partial<AcceptMatchRequestBody_benchRoster> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AcceptMatchRequestBody_disputedRules The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAcceptMatchRequestBody_disputedRules(acceptMatchRequestBody_disputedRules?: Partial<AcceptMatchRequestBody_disputedRules> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AcceptMatchResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAcceptMatchResponse(acceptMatchResponse?: Partial<AcceptMatchResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ActivateLeagueSeasonResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoActivateLeagueSeasonResponse(activateLeagueSeasonResponse?: Partial<ActivateLeagueSeasonResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AddLeagueGameRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAddLeagueGameRequestBody(addLeagueGameRequestBody?: Partial<AddLeagueGameRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AddLeagueMemberRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAddLeagueMemberRequestBody(addLeagueMemberRequestBody?: Partial<AddLeagueMemberRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AddLeagueMemberResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAddLeagueMemberResponse(addLeagueMemberResponse?: Partial<AddLeagueMemberResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AddTicketMessageRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAddTicketMessageRequestBody(addTicketMessageRequestBody?: Partial<AddTicketMessageRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param AddTicketMessageResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoAddTicketMessageResponse(addTicketMessageResponse?: Partial<AddTicketMessageResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiBatchStreamStatus The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiBatchStreamStatus(apiBatchStreamStatus?: Partial<ApiBatchStreamStatus> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiBatchStreamStatusBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiBatchStreamStatusBody(apiBatchStreamStatusBody?: Partial<ApiBatchStreamStatusBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiBatchStreamStatusEnvelope The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiBatchStreamStatusEnvelope(apiBatchStreamStatusEnvelope?: Partial<ApiBatchStreamStatusEnvelope> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry(apiGameCatalogEntry?: Partial<ApiGameCatalogEntry> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_bannerImage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_bannerImage(apiGameCatalogEntry_bannerImage?: Partial<Parsable | ApiGameCatalogEntry_bannerImageMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_bannerImageMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_bannerImageMember1(apiGameCatalogEntry_bannerImageMember1?: Partial<ApiGameCatalogEntry_bannerImageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_convexId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_convexId(apiGameCatalogEntry_convexId?: Partial<Parsable | ApiGameCatalogEntry_convexIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_convexIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_convexIdMember1(apiGameCatalogEntry_convexIdMember1?: Partial<ApiGameCatalogEntry_convexIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_coverImage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_coverImage(apiGameCatalogEntry_coverImage?: Partial<Parsable | ApiGameCatalogEntry_coverImageMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_coverImageMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_coverImageMember1(apiGameCatalogEntry_coverImageMember1?: Partial<ApiGameCatalogEntry_coverImageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_descriptionKey The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_descriptionKey(apiGameCatalogEntry_descriptionKey?: Partial<Parsable | ApiGameCatalogEntry_descriptionKeyMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_descriptionKeyMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_descriptionKeyMember1(apiGameCatalogEntry_descriptionKeyMember1?: Partial<ApiGameCatalogEntry_descriptionKeyMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_rulesLink The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_rulesLink(apiGameCatalogEntry_rulesLink?: Partial<Parsable | ApiGameCatalogEntry_rulesLinkMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_rulesLinkMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_rulesLinkMember1(apiGameCatalogEntry_rulesLinkMember1?: Partial<ApiGameCatalogEntry_rulesLinkMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_shortNameKey The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_shortNameKey(apiGameCatalogEntry_shortNameKey?: Partial<Parsable | ApiGameCatalogEntry_shortNameKeyMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogEntry_shortNameKeyMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogEntry_shortNameKeyMember1(apiGameCatalogEntry_shortNameKeyMember1?: Partial<ApiGameCatalogEntry_shortNameKeyMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameCatalogResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameCatalogResponse(apiGameCatalogResponse?: Partial<ApiGameCatalogResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMap The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMap(apiGameMap?: Partial<ApiGameMap> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMap_coverImage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMap_coverImage(apiGameMap_coverImage?: Partial<Parsable | ApiGameMap_coverImageMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMap_coverImageMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMap_coverImageMember1(apiGameMap_coverImageMember1?: Partial<ApiGameMap_coverImageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMap_minimapImage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMap_minimapImage(apiGameMap_minimapImage?: Partial<Parsable | ApiGameMap_minimapImageMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMap_minimapImageMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMap_minimapImageMember1(apiGameMap_minimapImageMember1?: Partial<ApiGameMap_minimapImageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode(apiGameMode?: Partial<ApiGameMode> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_descriptionKey The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_descriptionKey(apiGameMode_descriptionKey?: Partial<Parsable | ApiGameMode_descriptionKeyMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_descriptionKeyMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_descriptionKeyMember1(apiGameMode_descriptionKeyMember1?: Partial<ApiGameMode_descriptionKeyMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_image The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_image(apiGameMode_image?: Partial<Parsable | ApiGameMode_imageMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_imageMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_imageMember1(apiGameMode_imageMember1?: Partial<ApiGameMode_imageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_rewardBonus The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_rewardBonus(apiGameMode_rewardBonus?: Partial<Parsable | ApiGameMode_rewardBonusMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_rewardBonusMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_rewardBonusMember1(apiGameMode_rewardBonusMember1?: Partial<ApiGameMode_rewardBonusMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_shortName The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_shortName(apiGameMode_shortName?: Partial<Parsable | ApiGameMode_shortNameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameMode_shortNameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameMode_shortNameMember1(apiGameMode_shortNameMember1?: Partial<ApiGameMode_shortNameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameModeMapPool The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameModeMapPool(apiGameModeMapPool?: Partial<ApiGameModeMapPool> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGamePlaylist The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGamePlaylist(apiGamePlaylist?: Partial<ApiGamePlaylist> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGamePlaylist_descriptionKey The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGamePlaylist_descriptionKey(apiGamePlaylist_descriptionKey?: Partial<Parsable | ApiGamePlaylist_descriptionKeyMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGamePlaylist_descriptionKeyMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGamePlaylist_descriptionKeyMember1(apiGamePlaylist_descriptionKeyMember1?: Partial<ApiGamePlaylist_descriptionKeyMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGamePlaylist_image The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGamePlaylist_image(apiGamePlaylist_image?: Partial<Parsable | ApiGamePlaylist_imageMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGamePlaylist_imageMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGamePlaylist_imageMember1(apiGamePlaylist_imageMember1?: Partial<ApiGamePlaylist_imageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGamePlaylistsResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGamePlaylistsResponse(apiGamePlaylistsResponse?: Partial<ApiGamePlaylistsResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameRank The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameRank(apiGameRank?: Partial<ApiGameRank> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameRank_sr The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameRank_sr(apiGameRank_sr?: Partial<Parsable | ApiGameRank_srMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameRank_srMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameRank_srMember1(apiGameRank_srMember1?: Partial<ApiGameRank_srMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameRank_top250Rank The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameRank_top250Rank(apiGameRank_top250Rank?: Partial<Parsable | ApiGameRank_top250RankMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiGameRank_top250RankMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiGameRank_top250RankMember1(apiGameRank_top250RankMember1?: Partial<ApiGameRank_top250RankMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail(apiMatchDetail?: Partial<ApiMatchDetail> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_completedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_completedAt(apiMatchDetail_completedAt?: Partial<Parsable | ApiMatchDetail_completedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_completedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_completedAtMember1(apiMatchDetail_completedAtMember1?: Partial<ApiMatchDetail_completedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_createdAt(apiMatchDetail_createdAt?: Partial<Parsable | ApiMatchDetail_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_createdAtMember1(apiMatchDetail_createdAtMember1?: Partial<ApiMatchDetail_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_leagueId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_leagueId(apiMatchDetail_leagueId?: Partial<Parsable | ApiMatchDetail_leagueIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_leagueIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_leagueIdMember1(apiMatchDetail_leagueIdMember1?: Partial<ApiMatchDetail_leagueIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_leagueSeasonId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_leagueSeasonId(apiMatchDetail_leagueSeasonId?: Partial<Parsable | ApiMatchDetail_leagueSeasonIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_leagueSeasonIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_leagueSeasonIdMember1(apiMatchDetail_leagueSeasonIdMember1?: Partial<ApiMatchDetail_leagueSeasonIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_matchType The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_matchType(apiMatchDetail_matchType?: Partial<Parsable | ApiMatchDetail_matchTypeMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_matchTypeMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_matchTypeMember1(apiMatchDetail_matchTypeMember1?: Partial<ApiMatchDetail_matchTypeMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_platform The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_platform(apiMatchDetail_platform?: Partial<Parsable | ApiMatchDetail_platformMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_platformMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_platformMember1(apiMatchDetail_platformMember1?: Partial<ApiMatchDetail_platformMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_region The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_region(apiMatchDetail_region?: Partial<Parsable | ApiMatchDetail_regionMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_regionMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_regionMember1(apiMatchDetail_regionMember1?: Partial<ApiMatchDetail_regionMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_scheduledAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_scheduledAt(apiMatchDetail_scheduledAt?: Partial<Parsable | ApiMatchDetail_scheduledAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_scheduledAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_scheduledAtMember1(apiMatchDetail_scheduledAtMember1?: Partial<ApiMatchDetail_scheduledAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_startedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_startedAt(apiMatchDetail_startedAt?: Partial<Parsable | ApiMatchDetail_startedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_startedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_startedAtMember1(apiMatchDetail_startedAtMember1?: Partial<ApiMatchDetail_startedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_winnerTeamId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_winnerTeamId(apiMatchDetail_winnerTeamId?: Partial<Parsable | ApiMatchDetail_winnerTeamIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetail_winnerTeamIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetail_winnerTeamIdMember1(apiMatchDetail_winnerTeamIdMember1?: Partial<ApiMatchDetail_winnerTeamIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchDetailResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchDetailResponse(apiMatchDetailResponse?: Partial<ApiMatchDetailResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer(apiMatchPlayer?: Partial<ApiMatchPlayer> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_avatarUrl(apiMatchPlayer_avatarUrl?: Partial<Parsable | ApiMatchPlayer_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_avatarUrlMember1(apiMatchPlayer_avatarUrlMember1?: Partial<ApiMatchPlayer_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_checkedInAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_checkedInAt(apiMatchPlayer_checkedInAt?: Partial<Parsable | ApiMatchPlayer_checkedInAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_checkedInAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_checkedInAtMember1(apiMatchPlayer_checkedInAtMember1?: Partial<ApiMatchPlayer_checkedInAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_name The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_name(apiMatchPlayer_name?: Partial<Parsable | ApiMatchPlayer_nameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_nameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_nameMember1(apiMatchPlayer_nameMember1?: Partial<ApiMatchPlayer_nameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_username The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_username(apiMatchPlayer_username?: Partial<Parsable | ApiMatchPlayer_usernameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayer_usernameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayer_usernameMember1(apiMatchPlayer_usernameMember1?: Partial<ApiMatchPlayer_usernameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchPlayersResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchPlayersResponse(apiMatchPlayersResponse?: Partial<ApiMatchPlayersResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchTeam The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchTeam(apiMatchTeam?: Partial<ApiMatchTeam> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchTeam_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchTeam_avatarUrl(apiMatchTeam_avatarUrl?: Partial<Parsable | ApiMatchTeam_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchTeam_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchTeam_avatarUrlMember1(apiMatchTeam_avatarUrlMember1?: Partial<ApiMatchTeam_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchTeam_score The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchTeam_score(apiMatchTeam_score?: Partial<Parsable | ApiMatchTeam_scoreMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMatchTeam_scoreMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMatchTeam_scoreMember1(apiMatchTeam_scoreMember1?: Partial<ApiMatchTeam_scoreMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMember The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMember(apiMember?: Partial<ApiMember> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMember_joinedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMember_joinedAt(apiMember_joinedAt?: Partial<Parsable | ApiMember_joinedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiMember_joinedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiMember_joinedAtMember1(apiMember_joinedAtMember1?: Partial<ApiMember_joinedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiObjective The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiObjective(apiObjective?: Partial<ApiObjective> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile(apiOrganizationProfile?: Partial<ApiOrganizationProfile> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_avatarUrl(apiOrganizationProfile_avatarUrl?: Partial<Parsable | ApiOrganizationProfile_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_avatarUrlMember1(apiOrganizationProfile_avatarUrlMember1?: Partial<ApiOrganizationProfile_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_bannerUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_bannerUrl(apiOrganizationProfile_bannerUrl?: Partial<Parsable | ApiOrganizationProfile_bannerUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_bannerUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_bannerUrlMember1(apiOrganizationProfile_bannerUrlMember1?: Partial<ApiOrganizationProfile_bannerUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_createdAt(apiOrganizationProfile_createdAt?: Partial<Parsable | ApiOrganizationProfile_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_createdAtMember1(apiOrganizationProfile_createdAtMember1?: Partial<ApiOrganizationProfile_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_description The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_description(apiOrganizationProfile_description?: Partial<Parsable | ApiOrganizationProfile_descriptionMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_descriptionMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_descriptionMember1(apiOrganizationProfile_descriptionMember1?: Partial<ApiOrganizationProfile_descriptionMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_slug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_slug(apiOrganizationProfile_slug?: Partial<Parsable | ApiOrganizationProfile_slugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_slugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_slugMember1(apiOrganizationProfile_slugMember1?: Partial<ApiOrganizationProfile_slugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_tag The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_tag(apiOrganizationProfile_tag?: Partial<Parsable | ApiOrganizationProfile_tagMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationProfile_tagMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationProfile_tagMember1(apiOrganizationProfile_tagMember1?: Partial<ApiOrganizationProfile_tagMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationStats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationStats(apiOrganizationStats?: Partial<ApiOrganizationStats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationSummary The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationSummary(apiOrganizationSummary?: Partial<ApiOrganizationSummary> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationSummary_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationSummary_avatarUrl(apiOrganizationSummary_avatarUrl?: Partial<Parsable | ApiOrganizationSummary_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationSummary_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationSummary_avatarUrlMember1(apiOrganizationSummary_avatarUrlMember1?: Partial<ApiOrganizationSummary_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationSummary_slug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationSummary_slug(apiOrganizationSummary_slug?: Partial<Parsable | ApiOrganizationSummary_slugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationSummary_slugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationSummary_slugMember1(apiOrganizationSummary_slugMember1?: Partial<ApiOrganizationSummary_slugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationSummary_tag The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationSummary_tag(apiOrganizationSummary_tag?: Partial<Parsable | ApiOrganizationSummary_tagMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOrganizationSummary_tagMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOrganizationSummary_tagMember1(apiOrganizationSummary_tagMember1?: Partial<ApiOrganizationSummary_tagMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection(apiOwnConnection?: Partial<ApiOwnConnection> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_connectedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_connectedAt(apiOwnConnection_connectedAt?: Partial<Parsable | ApiOwnConnection_connectedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_connectedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_connectedAtMember1(apiOwnConnection_connectedAtMember1?: Partial<ApiOwnConnection_connectedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_gamingPlatform The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_gamingPlatform(apiOwnConnection_gamingPlatform?: Partial<Parsable | ApiOwnConnection_gamingPlatformMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_gamingPlatformMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_gamingPlatformMember1(apiOwnConnection_gamingPlatformMember1?: Partial<ApiOwnConnection_gamingPlatformMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_region The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_region(apiOwnConnection_region?: Partial<Parsable | ApiOwnConnection_regionMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_regionMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_regionMember1(apiOwnConnection_regionMember1?: Partial<ApiOwnConnection_regionMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_url The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_url(apiOwnConnection_url?: Partial<Parsable | ApiOwnConnection_urlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_urlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_urlMember1(apiOwnConnection_urlMember1?: Partial<ApiOwnConnection_urlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_username The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_username(apiOwnConnection_username?: Partial<Parsable | ApiOwnConnection_usernameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiOwnConnection_usernameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiOwnConnection_usernameMember1(apiOwnConnection_usernameMember1?: Partial<ApiOwnConnection_usernameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream(apiPrimaryStream?: Partial<ApiPrimaryStream> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_gameName The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_gameName(apiPrimaryStream_gameName?: Partial<Parsable | ApiPrimaryStream_gameNameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_gameNameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_gameNameMember1(apiPrimaryStream_gameNameMember1?: Partial<ApiPrimaryStream_gameNameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_lastLiveAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_lastLiveAt(apiPrimaryStream_lastLiveAt?: Partial<Parsable | ApiPrimaryStream_lastLiveAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_lastLiveAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_lastLiveAtMember1(apiPrimaryStream_lastLiveAtMember1?: Partial<ApiPrimaryStream_lastLiveAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_startedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_startedAt(apiPrimaryStream_startedAt?: Partial<Parsable | ApiPrimaryStream_startedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_startedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_startedAtMember1(apiPrimaryStream_startedAtMember1?: Partial<ApiPrimaryStream_startedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_streamUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_streamUrl(apiPrimaryStream_streamUrl?: Partial<Parsable | ApiPrimaryStream_streamUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_streamUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_streamUrlMember1(apiPrimaryStream_streamUrlMember1?: Partial<ApiPrimaryStream_streamUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_thumbnailUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_thumbnailUrl(apiPrimaryStream_thumbnailUrl?: Partial<Parsable | ApiPrimaryStream_thumbnailUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_thumbnailUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_thumbnailUrlMember1(apiPrimaryStream_thumbnailUrlMember1?: Partial<ApiPrimaryStream_thumbnailUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_title The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_title(apiPrimaryStream_title?: Partial<Parsable | ApiPrimaryStream_titleMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_titleMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_titleMember1(apiPrimaryStream_titleMember1?: Partial<ApiPrimaryStream_titleMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_viewerCount The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_viewerCount(apiPrimaryStream_viewerCount?: Partial<Parsable | ApiPrimaryStream_viewerCountMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiPrimaryStream_viewerCountMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiPrimaryStream_viewerCountMember1(apiPrimaryStream_viewerCountMember1?: Partial<ApiPrimaryStream_viewerCountMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy(apiStrategy?: Partial<ApiStrategy> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_createdAt(apiStrategy_createdAt?: Partial<Parsable | ApiStrategy_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_createdAtMember1(apiStrategy_createdAtMember1?: Partial<ApiStrategy_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_description The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_description(apiStrategy_description?: Partial<Parsable | ApiStrategy_descriptionMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_descriptionMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_descriptionMember1(apiStrategy_descriptionMember1?: Partial<ApiStrategy_descriptionMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_previewUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_previewUrl(apiStrategy_previewUrl?: Partial<Parsable | ApiStrategy_previewUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_previewUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_previewUrlMember1(apiStrategy_previewUrlMember1?: Partial<ApiStrategy_previewUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_updatedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_updatedAt(apiStrategy_updatedAt?: Partial<Parsable | ApiStrategy_updatedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategy_updatedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategy_updatedAtMember1(apiStrategy_updatedAtMember1?: Partial<ApiStrategy_updatedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyEnvelope The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyEnvelope(apiStrategyEnvelope?: Partial<ApiStrategyEnvelope> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyShape The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyShape(apiStrategyShape?: Partial<ApiStrategyShape> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyShape_updatedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyShape_updatedAt(apiStrategyShape_updatedAt?: Partial<Parsable | ApiStrategyShape_updatedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyShape_updatedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyShape_updatedAtMember1(apiStrategyShape_updatedAtMember1?: Partial<ApiStrategyShape_updatedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyShapesEnvelope The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyShapesEnvelope(apiStrategyShapesEnvelope?: Partial<ApiStrategyShapesEnvelope> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyStage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyStage(apiStrategyStage?: Partial<ApiStrategyStage> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyStage_label The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyStage_label(apiStrategyStage_label?: Partial<Parsable | ApiStrategyStage_labelMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStrategyStage_labelMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStrategyStage_labelMember1(apiStrategyStage_labelMember1?: Partial<ApiStrategyStage_labelMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStreamStatus The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStreamStatus(apiStreamStatus?: Partial<ApiStreamStatus> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiStreamStatusEnvelope The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiStreamStatusEnvelope(apiStreamStatusEnvelope?: Partial<ApiStreamStatusEnvelope> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile(apiTeamProfile?: Partial<ApiTeamProfile> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_avatarUrl(apiTeamProfile_avatarUrl?: Partial<Parsable | ApiTeamProfile_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_avatarUrlMember1(apiTeamProfile_avatarUrlMember1?: Partial<ApiTeamProfile_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_bannerUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_bannerUrl(apiTeamProfile_bannerUrl?: Partial<Parsable | ApiTeamProfile_bannerUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_bannerUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_bannerUrlMember1(apiTeamProfile_bannerUrlMember1?: Partial<ApiTeamProfile_bannerUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_createdAt(apiTeamProfile_createdAt?: Partial<Parsable | ApiTeamProfile_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_createdAtMember1(apiTeamProfile_createdAtMember1?: Partial<ApiTeamProfile_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_description The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_description(apiTeamProfile_description?: Partial<Parsable | ApiTeamProfile_descriptionMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_descriptionMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_descriptionMember1(apiTeamProfile_descriptionMember1?: Partial<ApiTeamProfile_descriptionMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_gameId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_gameId(apiTeamProfile_gameId?: Partial<Parsable | ApiTeamProfile_gameIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_gameIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_gameIdMember1(apiTeamProfile_gameIdMember1?: Partial<ApiTeamProfile_gameIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_organizationId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_organizationId(apiTeamProfile_organizationId?: Partial<Parsable | ApiTeamProfile_organizationIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_organizationIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_organizationIdMember1(apiTeamProfile_organizationIdMember1?: Partial<ApiTeamProfile_organizationIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_slug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_slug(apiTeamProfile_slug?: Partial<Parsable | ApiTeamProfile_slugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_slugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_slugMember1(apiTeamProfile_slugMember1?: Partial<ApiTeamProfile_slugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_tag The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_tag(apiTeamProfile_tag?: Partial<Parsable | ApiTeamProfile_tagMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamProfile_tagMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamProfile_tagMember1(apiTeamProfile_tagMember1?: Partial<ApiTeamProfile_tagMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamSummary The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamSummary(apiTeamSummary?: Partial<ApiTeamSummary> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamSummary_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamSummary_avatarUrl(apiTeamSummary_avatarUrl?: Partial<Parsable | ApiTeamSummary_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamSummary_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamSummary_avatarUrlMember1(apiTeamSummary_avatarUrlMember1?: Partial<ApiTeamSummary_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamSummary_slug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamSummary_slug(apiTeamSummary_slug?: Partial<Parsable | ApiTeamSummary_slugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamSummary_slugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamSummary_slugMember1(apiTeamSummary_slugMember1?: Partial<ApiTeamSummary_slugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamSummary_tag The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamSummary_tag(apiTeamSummary_tag?: Partial<Parsable | ApiTeamSummary_tagMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiTeamSummary_tagMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiTeamSummary_tagMember1(apiTeamSummary_tagMember1?: Partial<ApiTeamSummary_tagMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserConnection The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserConnection(apiUserConnection?: Partial<ApiUserConnection> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserConnection_connectedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserConnection_connectedAt(apiUserConnection_connectedAt?: Partial<Parsable | ApiUserConnection_connectedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserConnection_connectedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserConnection_connectedAtMember1(apiUserConnection_connectedAtMember1?: Partial<ApiUserConnection_connectedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserConnection_url The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserConnection_url(apiUserConnection_url?: Partial<Parsable | ApiUserConnection_urlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserConnection_urlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserConnection_urlMember1(apiUserConnection_urlMember1?: Partial<ApiUserConnection_urlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserConnection_username The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserConnection_username(apiUserConnection_username?: Partial<Parsable | ApiUserConnection_usernameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserConnection_usernameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserConnection_usernameMember1(apiUserConnection_usernameMember1?: Partial<ApiUserConnection_usernameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership(apiUserOrganizationMembership?: Partial<ApiUserOrganizationMembership> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_avatarUrl(apiUserOrganizationMembership_avatarUrl?: Partial<Parsable | ApiUserOrganizationMembership_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_avatarUrlMember1(apiUserOrganizationMembership_avatarUrlMember1?: Partial<ApiUserOrganizationMembership_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_joinedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_joinedAt(apiUserOrganizationMembership_joinedAt?: Partial<Parsable | ApiUserOrganizationMembership_joinedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_joinedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_joinedAtMember1(apiUserOrganizationMembership_joinedAtMember1?: Partial<ApiUserOrganizationMembership_joinedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_slug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_slug(apiUserOrganizationMembership_slug?: Partial<Parsable | ApiUserOrganizationMembership_slugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_slugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_slugMember1(apiUserOrganizationMembership_slugMember1?: Partial<ApiUserOrganizationMembership_slugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_tag The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_tag(apiUserOrganizationMembership_tag?: Partial<Parsable | ApiUserOrganizationMembership_tagMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserOrganizationMembership_tagMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserOrganizationMembership_tagMember1(apiUserOrganizationMembership_tagMember1?: Partial<ApiUserOrganizationMembership_tagMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile(apiUserProfile?: Partial<ApiUserProfile> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_avatarUrl(apiUserProfile_avatarUrl?: Partial<Parsable | ApiUserProfile_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_avatarUrlMember1(apiUserProfile_avatarUrlMember1?: Partial<ApiUserProfile_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_bannerUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_bannerUrl(apiUserProfile_bannerUrl?: Partial<Parsable | ApiUserProfile_bannerUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_bannerUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_bannerUrlMember1(apiUserProfile_bannerUrlMember1?: Partial<ApiUserProfile_bannerUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_bio The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_bio(apiUserProfile_bio?: Partial<Parsable | ApiUserProfile_bioMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_bioMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_bioMember1(apiUserProfile_bioMember1?: Partial<ApiUserProfile_bioMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_createdAt(apiUserProfile_createdAt?: Partial<Parsable | ApiUserProfile_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_createdAtMember1(apiUserProfile_createdAtMember1?: Partial<ApiUserProfile_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_name The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_name(apiUserProfile_name?: Partial<Parsable | ApiUserProfile_nameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_nameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_nameMember1(apiUserProfile_nameMember1?: Partial<ApiUserProfile_nameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_username The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_username(apiUserProfile_username?: Partial<Parsable | ApiUserProfile_usernameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserProfile_usernameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserProfile_usernameMember1(apiUserProfile_usernameMember1?: Partial<ApiUserProfile_usernameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserStats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserStats(apiUserStats?: Partial<ApiUserStats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership(apiUserTeamMembership?: Partial<ApiUserTeamMembership> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_avatarUrl(apiUserTeamMembership_avatarUrl?: Partial<Parsable | ApiUserTeamMembership_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_avatarUrlMember1(apiUserTeamMembership_avatarUrlMember1?: Partial<ApiUserTeamMembership_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_joinedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_joinedAt(apiUserTeamMembership_joinedAt?: Partial<Parsable | ApiUserTeamMembership_joinedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_joinedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_joinedAtMember1(apiUserTeamMembership_joinedAtMember1?: Partial<ApiUserTeamMembership_joinedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_slug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_slug(apiUserTeamMembership_slug?: Partial<Parsable | ApiUserTeamMembership_slugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_slugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_slugMember1(apiUserTeamMembership_slugMember1?: Partial<ApiUserTeamMembership_slugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_tag The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_tag(apiUserTeamMembership_tag?: Partial<Parsable | ApiUserTeamMembership_tagMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTeamMembership_tagMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTeamMembership_tagMember1(apiUserTeamMembership_tagMember1?: Partial<ApiUserTeamMembership_tagMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy(apiUserTrophy?: Partial<ApiUserTrophy> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_awardedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_awardedAt(apiUserTrophy_awardedAt?: Partial<Parsable | ApiUserTrophy_awardedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_awardedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_awardedAtMember1(apiUserTrophy_awardedAtMember1?: Partial<ApiUserTrophy_awardedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_description The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_description(apiUserTrophy_description?: Partial<Parsable | ApiUserTrophy_descriptionMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_descriptionMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_descriptionMember1(apiUserTrophy_descriptionMember1?: Partial<ApiUserTrophy_descriptionMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_iconUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_iconUrl(apiUserTrophy_iconUrl?: Partial<Parsable | ApiUserTrophy_iconUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_iconUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_iconUrlMember1(apiUserTrophy_iconUrlMember1?: Partial<ApiUserTrophy_iconUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_rarity The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_rarity(apiUserTrophy_rarity?: Partial<Parsable | ApiUserTrophy_rarityMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_rarityMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_rarityMember1(apiUserTrophy_rarityMember1?: Partial<ApiUserTrophy_rarityMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_title The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_title(apiUserTrophy_title?: Partial<Parsable | ApiUserTrophy_titleMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApiUserTrophy_titleMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApiUserTrophy_titleMember1(apiUserTrophy_titleMember1?: Partial<ApiUserTrophy_titleMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApplyRuleTemplateRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApplyRuleTemplateRequestBody(applyRuleTemplateRequestBody?: Partial<ApplyRuleTemplateRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApplyRuleTemplateResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApplyRuleTemplateResponse(applyRuleTemplateResponse?: Partial<ApplyRuleTemplateResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ApproveLeagueTeamResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoApproveLeagueTeamResponse(approveLeagueTeamResponse?: Partial<ApproveLeagueTeamResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param BansRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoBansRequestBody(bansRequestBody?: Partial<BansRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CancelMatchRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCancelMatchRequestBody(cancelMatchRequestBody?: Partial<CancelMatchRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CancelMatchResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCancelMatchResponse(cancelMatchResponse?: Partial<CancelMatchResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatMessage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatMessage(chatMessage?: Partial<ChatMessage> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatMessage_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatMessage_createdAt(chatMessage_createdAt?: Partial<Parsable | ChatMessage_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatMessage_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatMessage_createdAtMember1(chatMessage_createdAtMember1?: Partial<ChatMessage_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatMessage_replyToId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatMessage_replyToId(chatMessage_replyToId?: Partial<Parsable | ChatMessage_replyToIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatMessage_replyToIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatMessage_replyToIdMember1(chatMessage_replyToIdMember1?: Partial<ChatMessage_replyToIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatMessage_senderUsername The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatMessage_senderUsername(chatMessage_senderUsername?: Partial<Parsable | ChatMessage_senderUsernameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatMessage_senderUsernameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatMessage_senderUsernameMember1(chatMessage_senderUsernameMember1?: Partial<ChatMessage_senderUsernameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ClearCooldownResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoClearCooldownResponse(clearCooldownResponse?: Partial<ClearCooldownResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CompleteLeagueSeasonResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCompleteLeagueSeasonResponse(completeLeagueSeasonResponse?: Partial<CompleteLeagueSeasonResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ConfirmScoreBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoConfirmScoreBody(confirmScoreBody?: Partial<ConfirmScoreBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateBanRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateBanRequestBody(createBanRequestBody?: Partial<CreateBanRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateBanResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateBanResponse(createBanResponse?: Partial<CreateBanResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateLeagueTicketRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateLeagueTicketRequestBody(createLeagueTicketRequestBody?: Partial<CreateLeagueTicketRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateLeagueTicketResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateLeagueTicketResponse(createLeagueTicketResponse?: Partial<CreateLeagueTicketResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateMatchRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateMatchRequestBody(createMatchRequestBody?: Partial<CreateMatchRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateMatchRequestBody_benchRoster The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateMatchRequestBody_benchRoster(createMatchRequestBody_benchRoster?: Partial<CreateMatchRequestBody_benchRoster> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateMatchRequestBody_gameSpecificOptions The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateMatchRequestBody_gameSpecificOptions(createMatchRequestBody_gameSpecificOptions?: Partial<CreateMatchRequestBody_gameSpecificOptions> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateMatchRequestBody_lockedRules The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateMatchRequestBody_lockedRules(createMatchRequestBody_lockedRules?: Partial<CreateMatchRequestBody_lockedRules> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateMatchResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateMatchResponse(createMatchResponse?: Partial<CreateMatchResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreatePenaltyRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreatePenaltyRequestBody(createPenaltyRequestBody?: Partial<CreatePenaltyRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreatePenaltyResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreatePenaltyResponse(createPenaltyResponse?: Partial<CreatePenaltyResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateSeasonRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateSeasonRequestBody(createSeasonRequestBody?: Partial<CreateSeasonRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateSeasonResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateSeasonResponse(createSeasonResponse?: Partial<CreateSeasonResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateTicketRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateTicketRequestBody(createTicketRequestBody?: Partial<CreateTicketRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateTicketResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateTicketResponse(createTicketResponse?: Partial<CreateTicketResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param CreateWebhookBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoCreateWebhookBody(createWebhookBody?: Partial<CreateWebhookBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param DeleteLeagueSeasonResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoDeleteLeagueSeasonResponse(deleteLeagueSeasonResponse?: Partial<DeleteLeagueSeasonResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param DenyLeagueTeamRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoDenyLeagueTeamRequestBody(denyLeagueTeamRequestBody?: Partial<DenyLeagueTeamRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param DenyLeagueTeamResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoDenyLeagueTeamResponse(denyLeagueTeamResponse?: Partial<DenyLeagueTeamResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param DiscoverLeaguesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoDiscoverLeaguesRequestBody(discoverLeaguesRequestBody?: Partial<DiscoverLeaguesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ErrorEscaped The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoErrorEscaped(errorEscaped?: Partial<ErrorEscaped> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param EscalateLeagueTicketRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoEscalateLeagueTicketRequestBody(escalateLeagueTicketRequestBody?: Partial<EscalateLeagueTicketRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param EscalateLeagueTicketResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoEscalateLeagueTicketResponse(escalateLeagueTicketResponse?: Partial<EscalateLeagueTicketResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ForfeitMatchRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoForfeitMatchRequestBody(forfeitMatchRequestBody?: Partial<ForfeitMatchRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ForfeitMatchResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoForfeitMatchResponse(forfeitMatchResponse?: Partial<ForfeitMatchResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param Game The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGame(game?: Partial<Game> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameBatchMatchScoreResult The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameBatchMatchScoreResult(gameBatchMatchScoreResult?: Partial<GameBatchMatchScoreResult> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameBatchMatchScoresBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameBatchMatchScoresBody(gameBatchMatchScoresBody?: Partial<GameBatchMatchScoresBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameBatchMatchScoresResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameBatchMatchScoresResponse(gameBatchMatchScoresResponse?: Partial<GameBatchMatchScoresResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameBatchScoreResult The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameBatchScoreResult(gameBatchScoreResult?: Partial<GameBatchScoreResult> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameBatchScoresBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameBatchScoresBody(gameBatchScoresBody?: Partial<GameBatchScoresBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameBatchScoresResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameBatchScoresResponse(gameBatchScoresResponse?: Partial<GameBatchScoresResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameCreateMatchBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameCreateMatchBody(gameCreateMatchBody?: Partial<GameCreateMatchBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameCreateMatchResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameCreateMatchResponse(gameCreateMatchResponse?: Partial<GameCreateMatchResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameDetailTeam The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameDetailTeam(gameDetailTeam?: Partial<GameDetailTeam> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameForfeitBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameForfeitBody(gameForfeitBody?: Partial<GameForfeitBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameForfeitResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameForfeitResponse(gameForfeitResponse?: Partial<GameForfeitResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMapScoreInput The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMapScoreInput(gameMapScoreInput?: Partial<GameMapScoreInput> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMapScoreInput_playerStats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMapScoreInput_playerStats(gameMapScoreInput_playerStats?: Partial<GameMapScoreInput_playerStats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch(gameMatch?: Partial<GameMatch> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_acceptedTeamScore The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_acceptedTeamScore(gameMatch_acceptedTeamScore?: Partial<Parsable | GameMatch_acceptedTeamScoreMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_acceptedTeamScoreMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_acceptedTeamScoreMember1(gameMatch_acceptedTeamScoreMember1?: Partial<GameMatch_acceptedTeamScoreMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_completedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_completedAt(gameMatch_completedAt?: Partial<Parsable | GameMatch_completedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_completedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_completedAtMember1(gameMatch_completedAtMember1?: Partial<GameMatch_completedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_createdAt(gameMatch_createdAt?: Partial<Parsable | GameMatch_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_createdAtMember1(gameMatch_createdAtMember1?: Partial<GameMatch_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_creatorTeamScore The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_creatorTeamScore(gameMatch_creatorTeamScore?: Partial<Parsable | GameMatch_creatorTeamScoreMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_creatorTeamScoreMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_creatorTeamScoreMember1(gameMatch_creatorTeamScoreMember1?: Partial<GameMatch_creatorTeamScoreMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_scheduledAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_scheduledAt(gameMatch_scheduledAt?: Partial<Parsable | GameMatch_scheduledAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_scheduledAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_scheduledAtMember1(gameMatch_scheduledAtMember1?: Partial<GameMatch_scheduledAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_startedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_startedAt(gameMatch_startedAt?: Partial<Parsable | GameMatch_startedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatch_startedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatch_startedAtMember1(gameMatch_startedAtMember1?: Partial<GameMatch_startedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail(gameMatchDetail?: Partial<GameMatchDetail> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_acceptedTeamScore The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_acceptedTeamScore(gameMatchDetail_acceptedTeamScore?: Partial<Parsable | GameMatchDetail_acceptedTeamScoreMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_acceptedTeamScoreMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_acceptedTeamScoreMember1(gameMatchDetail_acceptedTeamScoreMember1?: Partial<GameMatchDetail_acceptedTeamScoreMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_completedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_completedAt(gameMatchDetail_completedAt?: Partial<Parsable | GameMatchDetail_completedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_completedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_completedAtMember1(gameMatchDetail_completedAtMember1?: Partial<GameMatchDetail_completedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_createdAt(gameMatchDetail_createdAt?: Partial<Parsable | GameMatchDetail_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_createdAtMember1(gameMatchDetail_createdAtMember1?: Partial<GameMatchDetail_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_creatorTeamScore The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_creatorTeamScore(gameMatchDetail_creatorTeamScore?: Partial<Parsable | GameMatchDetail_creatorTeamScoreMember1 | number> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_creatorTeamScoreMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_creatorTeamScoreMember1(gameMatchDetail_creatorTeamScoreMember1?: Partial<GameMatchDetail_creatorTeamScoreMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_leagueId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_leagueId(gameMatchDetail_leagueId?: Partial<Parsable | GameMatchDetail_leagueIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_leagueIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_leagueIdMember1(gameMatchDetail_leagueIdMember1?: Partial<GameMatchDetail_leagueIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_leagueSeasonId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_leagueSeasonId(gameMatchDetail_leagueSeasonId?: Partial<Parsable | GameMatchDetail_leagueSeasonIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_leagueSeasonIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_leagueSeasonIdMember1(gameMatchDetail_leagueSeasonIdMember1?: Partial<GameMatchDetail_leagueSeasonIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_loserTeamId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_loserTeamId(gameMatchDetail_loserTeamId?: Partial<Parsable | GameMatchDetail_loserTeamIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_loserTeamIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_loserTeamIdMember1(gameMatchDetail_loserTeamIdMember1?: Partial<GameMatchDetail_loserTeamIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_scheduledAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_scheduledAt(gameMatchDetail_scheduledAt?: Partial<Parsable | GameMatchDetail_scheduledAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_scheduledAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_scheduledAtMember1(gameMatchDetail_scheduledAtMember1?: Partial<GameMatchDetail_scheduledAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_startedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_startedAt(gameMatchDetail_startedAt?: Partial<Parsable | GameMatchDetail_startedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_startedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_startedAtMember1(gameMatchDetail_startedAtMember1?: Partial<GameMatchDetail_startedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_winnerTeamId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_winnerTeamId(gameMatchDetail_winnerTeamId?: Partial<Parsable | GameMatchDetail_winnerTeamIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetail_winnerTeamIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetail_winnerTeamIdMember1(gameMatchDetail_winnerTeamIdMember1?: Partial<GameMatchDetail_winnerTeamIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchDetailResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchDetailResponse(gameMatchDetailResponse?: Partial<GameMatchDetailResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchRostersResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchRostersResponse(gameMatchRostersResponse?: Partial<GameMatchRostersResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchRostersResponse_acceptedTeamId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchRostersResponse_acceptedTeamId(gameMatchRostersResponse_acceptedTeamId?: Partial<Parsable | GameMatchRostersResponse_acceptedTeamIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMatchRostersResponse_acceptedTeamIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMatchRostersResponse_acceptedTeamIdMember1(gameMatchRostersResponse_acceptedTeamIdMember1?: Partial<GameMatchRostersResponse_acceptedTeamIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMultiMatchScoreItem The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMultiMatchScoreItem(gameMultiMatchScoreItem?: Partial<GameMultiMatchScoreItem> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameMultiMatchScoreItem_playerStats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameMultiMatchScoreItem_playerStats(gameMultiMatchScoreItem_playerStats?: Partial<GameMultiMatchScoreItem_playerStats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GamePlayerStatsBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGamePlayerStatsBody(gamePlayerStatsBody?: Partial<GamePlayerStatsBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GamePlayerStatsBody_playerStats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGamePlayerStatsBody_playerStats(gamePlayerStatsBody_playerStats?: Partial<GamePlayerStatsBody_playerStats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GamePlayerStatsResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGamePlayerStatsResponse(gamePlayerStatsResponse?: Partial<GamePlayerStatsResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRankDeleteResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRankDeleteResponse(gameRankDeleteResponse?: Partial<GameRankDeleteResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRankListResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRankListResponse(gameRankListResponse?: Partial<GameRankListResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRankUpsertBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRankUpsertBody(gameRankUpsertBody?: Partial<GameRankUpsertBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRankUpsertResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRankUpsertResponse(gameRankUpsertResponse?: Partial<GameRankUpsertResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRosterPlayer The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRosterPlayer(gameRosterPlayer?: Partial<GameRosterPlayer> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRosterPlayer_name The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRosterPlayer_name(gameRosterPlayer_name?: Partial<Parsable | GameRosterPlayer_nameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRosterPlayer_nameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRosterPlayer_nameMember1(gameRosterPlayer_nameMember1?: Partial<GameRosterPlayer_nameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRosterPlayer_username The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRosterPlayer_username(gameRosterPlayer_username?: Partial<Parsable | GameRosterPlayer_usernameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameRosterPlayer_usernameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameRosterPlayer_usernameMember1(gameRosterPlayer_usernameMember1?: Partial<GameRosterPlayer_usernameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameScore The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameScore(gameScore?: Partial<GameScore> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameScore_confirmedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameScore_confirmedAt(gameScore_confirmedAt?: Partial<Parsable | GameScore_confirmedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameScore_confirmedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameScore_confirmedAtMember1(gameScore_confirmedAtMember1?: Partial<GameScore_confirmedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameScore_submittedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameScore_submittedAt(gameScore_submittedAt?: Partial<Parsable | GameScore_submittedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameScore_submittedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameScore_submittedAtMember1(gameScore_submittedAtMember1?: Partial<GameScore_submittedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameScoresResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameScoresResponse(gameScoresResponse?: Partial<GameScoresResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameSeriesScore The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameSeriesScore(gameSeriesScore?: Partial<GameSeriesScore> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameSingleMapScoreBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameSingleMapScoreBody(gameSingleMapScoreBody?: Partial<GameSingleMapScoreBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameSingleMapScoreBody_playerStats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameSingleMapScoreBody_playerStats(gameSingleMapScoreBody_playerStats?: Partial<GameSingleMapScoreBody_playerStats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameSingleMapScoreResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameSingleMapScoreResponse(gameSingleMapScoreResponse?: Partial<GameSingleMapScoreResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameStatusUpdateBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameStatusUpdateBody(gameStatusUpdateBody?: Partial<GameStatusUpdateBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param GameStatusUpdateResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoGameStatusUpdateResponse(gameStatusUpdateResponse?: Partial<GameStatusUpdateResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ImageUploadUrlResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoImageUploadUrlResponse(imageUploadUrlResponse?: Partial<ImageUploadUrlResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param IssueCooldownRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoIssueCooldownRequestBody(issueCooldownRequestBody?: Partial<IssueCooldownRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param IssueCooldownResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoIssueCooldownResponse(issueCooldownResponse?: Partial<IssueCooldownResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaderboardRankResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaderboardRankResponse(leaderboardRankResponse?: Partial<LeaderboardRankResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaderboardRankResponse_gameSlug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaderboardRankResponse_gameSlug(leaderboardRankResponse_gameSlug?: Partial<Parsable | LeaderboardRankResponse_gameSlugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaderboardRankResponse_gameSlugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaderboardRankResponse_gameSlugMember1(leaderboardRankResponse_gameSlugMember1?: Partial<LeaderboardRankResponse_gameSlugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaderboardRankResponse_rank The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaderboardRankResponse_rank(leaderboardRankResponse_rank?: Partial<Parsable | number | LeaderboardRankResponse_rankMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaderboardRankResponse_rankMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaderboardRankResponse_rankMember1(leaderboardRankResponse_rankMember1?: Partial<LeaderboardRankResponse_rankMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaderboardStats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaderboardStats(leaderboardStats?: Partial<LeaderboardStats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueActivityFeedRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueActivityFeedRequestBody(leagueActivityFeedRequestBody?: Partial<LeagueActivityFeedRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueActivityFeedRequestBody_cursor The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueActivityFeedRequestBody_cursor(leagueActivityFeedRequestBody_cursor?: Partial<Parsable | LeagueActivityFeedRequestBody_cursorMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueActivityFeedRequestBody_cursorMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueActivityFeedRequestBody_cursorMember1(leagueActivityFeedRequestBody_cursorMember1?: Partial<LeagueActivityFeedRequestBody_cursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueActivityFeedResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueActivityFeedResponse(leagueActivityFeedResponse?: Partial<LeagueActivityFeedResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueApplyEligibility The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueApplyEligibility(leagueApplyEligibility?: Partial<LeagueApplyEligibility> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueApplyEligibility_eligibility The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueApplyEligibility_eligibility(leagueApplyEligibility_eligibility?: Partial<LeagueApplyEligibility_eligibility> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueApplyEligibility_eligibility_eligibleTeams The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueApplyEligibility_eligibility_eligibleTeams(leagueApplyEligibility_eligibility_eligibleTeams?: Partial<LeagueApplyEligibility_eligibility_eligibleTeams> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueApplyEligibility_eligibility_pendingTeams The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueApplyEligibility_eligibility_pendingTeams(leagueApplyEligibility_eligibility_pendingTeams?: Partial<LeagueApplyEligibility_eligibility_pendingTeams> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueApplyEligibilityRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueApplyEligibilityRequestBody(leagueApplyEligibilityRequestBody?: Partial<LeagueApplyEligibilityRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueBans The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueBans(leagueBans?: Partial<LeagueBans> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueBans_bans The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueBans_bans(leagueBans_bans?: Partial<LeagueBans_bans> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueBrandingSocials The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueBrandingSocials(leagueBrandingSocials?: Partial<LeagueBrandingSocials> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueDashboardStatsResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueDashboardStatsResponse(leagueDashboardStatsResponse?: Partial<LeagueDashboardStatsResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueDashboardStatsResponse_stats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueDashboardStatsResponse_stats(leagueDashboardStatsResponse_stats?: Partial<LeagueDashboardStatsResponse_stats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueDisplayRules The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueDisplayRules(leagueDisplayRules?: Partial<LeagueDisplayRules> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueDisplayRules_displayRules The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueDisplayRules_displayRules(leagueDisplayRules_displayRules?: Partial<LeagueDisplayRules_displayRules> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueDisplayRulesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueDisplayRulesRequestBody(leagueDisplayRulesRequestBody?: Partial<LeagueDisplayRulesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueGames The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueGames(leagueGames?: Partial<LeagueGames> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueGames_games The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueGames_games(leagueGames_games?: Partial<LeagueGames_games> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueGameWriteResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueGameWriteResponse(leagueGameWriteResponse?: Partial<LeagueGameWriteResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueMembers The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueMembers(leagueMembers?: Partial<LeagueMembers> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueMembers_members The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueMembers_members(leagueMembers_members?: Partial<LeagueMembers_members> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaguePenalties The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaguePenalties(leaguePenalties?: Partial<LeaguePenalties> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaguePenalties_cooldowns The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaguePenalties_cooldowns(leaguePenalties_cooldowns?: Partial<LeaguePenalties_cooldowns> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaguePenalties_penalties The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaguePenalties_penalties(leaguePenalties_penalties?: Partial<LeaguePenalties_penalties> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfile The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfile(leagueProfile?: Partial<LeagueProfile> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfile_activeSeasons The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfile_activeSeasons(leagueProfile_activeSeasons?: Partial<LeagueProfile_activeSeasons> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfile_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfile_avatarUrl(leagueProfile_avatarUrl?: Partial<Parsable | LeagueProfile_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfile_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfile_avatarUrlMember1(leagueProfile_avatarUrlMember1?: Partial<LeagueProfile_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfile_bannerUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfile_bannerUrl(leagueProfile_bannerUrl?: Partial<Parsable | LeagueProfile_bannerUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfile_bannerUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfile_bannerUrlMember1(leagueProfile_bannerUrlMember1?: Partial<LeagueProfile_bannerUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfile_games The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfile_games(leagueProfile_games?: Partial<LeagueProfile_games> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueProfileResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueProfileResponse(leagueProfileResponse?: Partial<LeagueProfileResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueRules The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueRules(leagueRules?: Partial<LeagueRules> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeason The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeason(leagueSeason?: Partial<LeagueSeason> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeason_season The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeason_season(leagueSeason_season?: Partial<LeagueSeason_season> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeasonOptions The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeasonOptions(leagueSeasonOptions?: Partial<LeagueSeasonOptions> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeasonOptions_defaultSeasonId The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeasonOptions_defaultSeasonId(leagueSeasonOptions_defaultSeasonId?: Partial<Parsable | LeagueSeasonOptions_defaultSeasonIdMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeasonOptions_defaultSeasonIdMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeasonOptions_defaultSeasonIdMember1(leagueSeasonOptions_defaultSeasonIdMember1?: Partial<LeagueSeasonOptions_defaultSeasonIdMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeasonOptions_seasons The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeasonOptions_seasons(leagueSeasonOptions_seasons?: Partial<LeagueSeasonOptions_seasons> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeasonOptionsRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeasonOptionsRequestBody(leagueSeasonOptionsRequestBody?: Partial<LeagueSeasonOptionsRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeasons The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeasons(leagueSeasons?: Partial<LeagueSeasons> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSeasons_seasons The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSeasons_seasons(leagueSeasons_seasons?: Partial<LeagueSeasons_seasons> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSettingsResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSettingsResponse(leagueSettingsResponse?: Partial<LeagueSettingsResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSettingsResponse_league The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSettingsResponse_league(leagueSettingsResponse_league?: Partial<LeagueSettingsResponse_league> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueStandings The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueStandings(leagueStandings?: Partial<LeagueStandings> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueStandings_standings The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueStandings_standings(leagueStandings_standings?: Partial<LeagueStandings_standings> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueStatusUpdateBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueStatusUpdateBody(leagueStatusUpdateBody?: Partial<LeagueStatusUpdateBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSummary The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSummary(leagueSummary?: Partial<LeagueSummary> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSummary_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSummary_avatarUrl(leagueSummary_avatarUrl?: Partial<Parsable | LeagueSummary_avatarUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSummary_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSummary_avatarUrlMember1(leagueSummary_avatarUrlMember1?: Partial<LeagueSummary_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSummary_bannerUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSummary_bannerUrl(leagueSummary_bannerUrl?: Partial<Parsable | LeagueSummary_bannerUrlMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSummary_bannerUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSummary_bannerUrlMember1(leagueSummary_bannerUrlMember1?: Partial<LeagueSummary_bannerUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueSummary_games The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueSummary_games(leagueSummary_games?: Partial<LeagueSummary_games> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueTemplates The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueTemplates(leagueTemplates?: Partial<LeagueTemplates> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueTemplates_templates The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueTemplates_templates(leagueTemplates_templates?: Partial<LeagueTemplates_templates> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeagueTemplatesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeagueTemplatesRequestBody(leagueTemplatesRequestBody?: Partial<LeagueTemplatesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ListGameMatchesBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoListGameMatchesBody(listGameMatchesBody?: Partial<ListGameMatchesBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MapScoreItem The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMapScoreItem(mapScoreItem?: Partial<MapScoreItem> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MapScoreItem_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMapScoreItem_createdAt(mapScoreItem_createdAt?: Partial<Parsable | MapScoreItem_createdAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MapScoreItem_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMapScoreItem_createdAtMember1(mapScoreItem_createdAtMember1?: Partial<MapScoreItem_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MapScores The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMapScores(mapScores?: Partial<MapScores> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MapScores_seriesScore The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMapScores_seriesScore(mapScores_seriesScore?: Partial<MapScores_seriesScore> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MarkMatchReadyRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMarkMatchReadyRequestBody(markMatchReadyRequestBody?: Partial<MarkMatchReadyRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MarkMatchReadyResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMarkMatchReadyResponse(markMatchReadyResponse?: Partial<MarkMatchReadyResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchDiscoverBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchDiscoverBody(matchDiscoverBody?: Partial<MatchDiscoverBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchDiscoverBody_cursor The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchDiscoverBody_cursor(matchDiscoverBody_cursor?: Partial<Parsable | MatchDiscoverBody_cursorMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchDiscoverBody_cursorMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchDiscoverBody_cursorMember1(matchDiscoverBody_cursorMember1?: Partial<MatchDiscoverBody_cursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchDiscoverPage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchDiscoverPage(matchDiscoverPage?: Partial<MatchDiscoverPage> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchDiscoverPage_nextCursor The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchDiscoverPage_nextCursor(matchDiscoverPage_nextCursor?: Partial<Parsable | MatchDiscoverPage_nextCursorMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchDiscoverPage_nextCursorMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchDiscoverPage_nextCursorMember1(matchDiscoverPage_nextCursorMember1?: Partial<MatchDiscoverPage_nextCursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchesRequestBody(matchesRequestBody?: Partial<MatchesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchesRequestBody_cursor The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchesRequestBody_cursor(matchesRequestBody_cursor?: Partial<Parsable | MatchesRequestBody_cursorMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchesRequestBody_cursorMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchesRequestBody_cursorMember1(matchesRequestBody_cursorMember1?: Partial<MatchesRequestBody_cursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OngoingMatchesResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOngoingMatchesResponse(ongoingMatchesResponse?: Partial<OngoingMatchesResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OrganizationLeaderboardEntry The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationLeaderboardEntry(organizationLeaderboardEntry?: Partial<OrganizationLeaderboardEntry> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OrganizationLeaderboardEntry_gameSlug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationLeaderboardEntry_gameSlug(organizationLeaderboardEntry_gameSlug?: Partial<Parsable | OrganizationLeaderboardEntry_gameSlugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OrganizationLeaderboardEntry_gameSlugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationLeaderboardEntry_gameSlugMember1(organizationLeaderboardEntry_gameSlugMember1?: Partial<OrganizationLeaderboardEntry_gameSlugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OrganizationLeaderboardEntry_stats The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationLeaderboardEntry_stats(organizationLeaderboardEntry_stats?: Partial<OrganizationLeaderboardEntry_stats> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OrganizationLeaderboardResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationLeaderboardResponse(organizationLeaderboardResponse?: Partial<OrganizationLeaderboardResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OrganizationLeaderboardResponse_gameSlug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationLeaderboardResponse_gameSlug(organizationLeaderboardResponse_gameSlug?: Partial<Parsable | OrganizationLeaderboardResponse_gameSlugMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param OrganizationLeaderboardResponse_gameSlugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationLeaderboardResponse_gameSlugMember1(organizationLeaderboardResponse_gameSlugMember1?: Partial<OrganizationLeaderboardResponse_gameSlugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param PenaltiesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoPenaltiesRequestBody(penaltiesRequestBody?: Partial<PenaltiesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param PlayerLeaderboardEntry The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoPlayerLeaderboardEntry(playerLeaderboardEntry?: Partial<PlayerLeaderboardEntry> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param PlayerLeaderboardResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoPlayerLeaderboardResponse(playerLeaderboardResponse?: Partial<PlayerLeaderboardResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RemoveDisplayRuleResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRemoveDisplayRuleResponse(removeDisplayRuleResponse?: Partial<RemoveDisplayRuleResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RemoveLeagueGameResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRemoveLeagueGameResponse(removeLeagueGameResponse?: Partial<RemoveLeagueGameResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RemoveLeagueMemberResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRemoveLeagueMemberResponse(removeLeagueMemberResponse?: Partial<RemoveLeagueMemberResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RemoveLeagueTeamRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRemoveLeagueTeamRequestBody(removeLeagueTeamRequestBody?: Partial<RemoveLeagueTeamRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RemoveLeagueTeamResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRemoveLeagueTeamResponse(removeLeagueTeamResponse?: Partial<RemoveLeagueTeamResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ReorderDisplayRulesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoReorderDisplayRulesRequestBody(reorderDisplayRulesRequestBody?: Partial<ReorderDisplayRulesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ReorderDisplayRulesRequestBody_items The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoReorderDisplayRulesRequestBody_items(reorderDisplayRulesRequestBody_items?: Partial<ReorderDisplayRulesRequestBody_items> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ReorderDisplayRulesResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoReorderDisplayRulesResponse(reorderDisplayRulesResponse?: Partial<ReorderDisplayRulesResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ReplyLeagueTicketRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoReplyLeagueTicketRequestBody(replyLeagueTicketRequestBody?: Partial<ReplyLeagueTicketRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ReplyLeagueTicketResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoReplyLeagueTicketResponse(replyLeagueTicketResponse?: Partial<ReplyLeagueTicketResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ReportChatMessageRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoReportChatMessageRequestBody(reportChatMessageRequestBody?: Partial<ReportChatMessageRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ReportChatMessageResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoReportChatMessageResponse(reportChatMessageResponse?: Partial<ReportChatMessageResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RequestLeagueShutdownResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRequestLeagueShutdownResponse(requestLeagueShutdownResponse?: Partial<RequestLeagueShutdownResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RevokeBanRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRevokeBanRequestBody(revokeBanRequestBody?: Partial<RevokeBanRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RevokeBanResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRevokeBanResponse(revokeBanResponse?: Partial<RevokeBanResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RulesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRulesRequestBody(rulesRequestBody?: Partial<RulesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param RuleWriteResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoRuleWriteResponse(ruleWriteResponse?: Partial<RuleWriteResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ScoreConfirmer The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoScoreConfirmer(scoreConfirmer?: Partial<ScoreConfirmer> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ScoreConfirmer_confirmedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoScoreConfirmer_confirmedAt(scoreConfirmer_confirmedAt?: Partial<Parsable | ScoreConfirmer_confirmedAtMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ScoreConfirmer_confirmedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoScoreConfirmer_confirmedAtMember1(scoreConfirmer_confirmedAtMember1?: Partial<ScoreConfirmer_confirmedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ScoreSubmissionResult The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoScoreSubmissionResult(scoreSubmissionResult?: Partial<ScoreSubmissionResult> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ScoreSubmitter The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoScoreSubmitter(scoreSubmitter?: Partial<ScoreSubmitter> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ScoreSubmitter_name The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoScoreSubmitter_name(scoreSubmitter_name?: Partial<Parsable | ScoreSubmitter_nameMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ScoreSubmitter_nameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoScoreSubmitter_nameMember1(scoreSubmitter_nameMember1?: Partial<ScoreSubmitter_nameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param SeasonsRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoSeasonsRequestBody(seasonsRequestBody?: Partial<SeasonsRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param SendChatMessageRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoSendChatMessageRequestBody(sendChatMessageRequestBody?: Partial<SendChatMessageRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param SendChatMessageResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoSendChatMessageResponse(sendChatMessageResponse?: Partial<SendChatMessageResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param SetLeagueEnabledRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoSetLeagueEnabledRequestBody(setLeagueEnabledRequestBody?: Partial<SetLeagueEnabledRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param SetLeagueEnabledResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoSetLeagueEnabledResponse(setLeagueEnabledResponse?: Partial<SetLeagueEnabledResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param StandingsRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoStandingsRequestBody(standingsRequestBody?: Partial<StandingsRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param SubmitScoreBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoSubmitScoreBody(submitScoreBody?: Partial<SubmitScoreBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param Team The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeam(team?: Partial<Team> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param Team_avatarUrl The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeam_avatarUrl(team_avatarUrl?: Partial<Parsable | string | Team_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param Team_avatarUrlMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeam_avatarUrlMember1(team_avatarUrlMember1?: Partial<Team_avatarUrlMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TeamLeaderboardEntry The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeamLeaderboardEntry(teamLeaderboardEntry?: Partial<TeamLeaderboardEntry> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TeamLeaderboardEntry_gameSlug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeamLeaderboardEntry_gameSlug(teamLeaderboardEntry_gameSlug?: Partial<Parsable | string | TeamLeaderboardEntry_gameSlugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TeamLeaderboardEntry_gameSlugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeamLeaderboardEntry_gameSlugMember1(teamLeaderboardEntry_gameSlugMember1?: Partial<TeamLeaderboardEntry_gameSlugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TeamLeaderboardResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeamLeaderboardResponse(teamLeaderboardResponse?: Partial<TeamLeaderboardResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TeamLeaderboardResponse_gameSlug The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeamLeaderboardResponse_gameSlug(teamLeaderboardResponse_gameSlug?: Partial<Parsable | string | TeamLeaderboardResponse_gameSlugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TeamLeaderboardResponse_gameSlugMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeamLeaderboardResponse_gameSlugMember1(teamLeaderboardResponse_gameSlugMember1?: Partial<TeamLeaderboardResponse_gameSlugMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail(ticketDetail?: Partial<TicketDetail> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_closedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_closedAt(ticketDetail_closedAt?: Partial<Parsable | string | TicketDetail_closedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_closedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_closedAtMember1(ticketDetail_closedAtMember1?: Partial<TicketDetail_closedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_createdAt(ticketDetail_createdAt?: Partial<Parsable | string | TicketDetail_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_createdAtMember1(ticketDetail_createdAtMember1?: Partial<TicketDetail_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_messages The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_messages(ticketDetail_messages?: Partial<TicketDetail_messages> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_messages_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_messages_createdAt(ticketDetail_messages_createdAt?: Partial<Parsable | string | TicketDetail_messages_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_messages_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_messages_createdAtMember1(ticketDetail_messages_createdAtMember1?: Partial<TicketDetail_messages_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_resolvedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_resolvedAt(ticketDetail_resolvedAt?: Partial<Parsable | string | TicketDetail_resolvedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_resolvedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_resolvedAtMember1(ticketDetail_resolvedAtMember1?: Partial<TicketDetail_resolvedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_updatedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_updatedAt(ticketDetail_updatedAt?: Partial<Parsable | string | TicketDetail_updatedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketDetail_updatedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketDetail_updatedAtMember1(ticketDetail_updatedAtMember1?: Partial<TicketDetail_updatedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketSummary The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketSummary(ticketSummary?: Partial<TicketSummary> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketSummary_createdAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketSummary_createdAt(ticketSummary_createdAt?: Partial<Parsable | string | TicketSummary_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketSummary_createdAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketSummary_createdAtMember1(ticketSummary_createdAtMember1?: Partial<TicketSummary_createdAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketSummary_updatedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketSummary_updatedAt(ticketSummary_updatedAt?: Partial<Parsable | string | TicketSummary_updatedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketSummary_updatedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketSummary_updatedAtMember1(ticketSummary_updatedAtMember1?: Partial<TicketSummary_updatedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ToggleLeagueGameRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoToggleLeagueGameRequestBody(toggleLeagueGameRequestBody?: Partial<ToggleLeagueGameRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ToggleLeagueGameResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoToggleLeagueGameResponse(toggleLeagueGameResponse?: Partial<ToggleLeagueGameResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TransferLeagueOwnershipRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTransferLeagueOwnershipRequestBody(transferLeagueOwnershipRequestBody?: Partial<TransferLeagueOwnershipRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TransferLeagueOwnershipResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTransferLeagueOwnershipResponse(transferLeagueOwnershipResponse?: Partial<TransferLeagueOwnershipResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchBadgeSet The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchBadgeSet(twitchBadgeSet?: Partial<TwitchBadgeSet> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchBadgeVersion The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchBadgeVersion(twitchBadgeVersion?: Partial<TwitchBadgeVersion> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchChannelBadges The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchChannelBadges(twitchChannelBadges?: Partial<TwitchChannelBadges> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchChannelBadges_broadcaster_id The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchChannelBadges_broadcaster_id(twitchChannelBadges_broadcaster_id?: Partial<Parsable | string | TwitchChannelBadges_broadcaster_idMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchChannelBadges_broadcaster_idMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchChannelBadges_broadcaster_idMember1(twitchChannelBadges_broadcaster_idMember1?: Partial<TwitchChannelBadges_broadcaster_idMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchChannelBadges_broadcaster_name The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchChannelBadges_broadcaster_name(twitchChannelBadges_broadcaster_name?: Partial<Parsable | string | TwitchChannelBadges_broadcaster_nameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchChannelBadges_broadcaster_nameMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchChannelBadges_broadcaster_nameMember1(twitchChannelBadges_broadcaster_nameMember1?: Partial<TwitchChannelBadges_broadcaster_nameMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TwitchGlobalBadges The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTwitchGlobalBadges(twitchGlobalBadges?: Partial<TwitchGlobalBadges> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateAttendanceRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateAttendanceRequestBody(updateAttendanceRequestBody?: Partial<UpdateAttendanceRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateAttendanceResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateAttendanceResponse(updateAttendanceResponse?: Partial<UpdateAttendanceResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateGameRulesRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateGameRulesRequestBody(updateGameRulesRequestBody?: Partial<UpdateGameRulesRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateGameRulesRequestBody_allowedTimeRange The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateGameRulesRequestBody_allowedTimeRange(updateGameRulesRequestBody_allowedTimeRange?: Partial<UpdateGameRulesRequestBody_allowedTimeRange> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateGameRulesRequestBody_rosterChangeWindowTime The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateGameRulesRequestBody_rosterChangeWindowTime(updateGameRulesRequestBody_rosterChangeWindowTime?: Partial<UpdateGameRulesRequestBody_rosterChangeWindowTime> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateGameRulesRequestBody_teamSize The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateGameRulesRequestBody_teamSize(updateGameRulesRequestBody_teamSize?: Partial<UpdateGameRulesRequestBody_teamSize> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueBrandingRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueBrandingRequestBody(updateLeagueBrandingRequestBody?: Partial<UpdateLeagueBrandingRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueBrandingResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueBrandingResponse(updateLeagueBrandingResponse?: Partial<UpdateLeagueBrandingResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueCooldownConfigRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueCooldownConfigRequestBody(updateLeagueCooldownConfigRequestBody?: Partial<UpdateLeagueCooldownConfigRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueCooldownConfigResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueCooldownConfigResponse(updateLeagueCooldownConfigResponse?: Partial<UpdateLeagueCooldownConfigResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueMemberRoleRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueMemberRoleRequestBody(updateLeagueMemberRoleRequestBody?: Partial<UpdateLeagueMemberRoleRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueMemberRoleResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueMemberRoleResponse(updateLeagueMemberRoleResponse?: Partial<UpdateLeagueMemberRoleResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueTicketRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueTicketRequestBody(updateLeagueTicketRequestBody?: Partial<UpdateLeagueTicketRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueTicketRequestBody_assignedTo The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueTicketRequestBody_assignedTo(updateLeagueTicketRequestBody_assignedTo?: Partial<Parsable | string | UpdateLeagueTicketRequestBody_assignedToMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueTicketRequestBody_assignedToMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueTicketRequestBody_assignedToMember1(updateLeagueTicketRequestBody_assignedToMember1?: Partial<UpdateLeagueTicketRequestBody_assignedToMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLeagueTicketResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLeagueTicketResponse(updateLeagueTicketResponse?: Partial<UpdateLeagueTicketResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLobbyCodeRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLobbyCodeRequestBody(updateLobbyCodeRequestBody?: Partial<UpdateLobbyCodeRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateLobbyCodeResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateLobbyCodeResponse(updateLobbyCodeResponse?: Partial<UpdateLobbyCodeResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdatePointsConfigRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdatePointsConfigRequestBody(updatePointsConfigRequestBody?: Partial<UpdatePointsConfigRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdatePointsConfigRequestBody_streakBreakpoints The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdatePointsConfigRequestBody_streakBreakpoints(updatePointsConfigRequestBody_streakBreakpoints?: Partial<UpdatePointsConfigRequestBody_streakBreakpoints> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdatePointsConfigResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdatePointsConfigResponse(updatePointsConfigResponse?: Partial<UpdatePointsConfigResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpdateWebhookBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpdateWebhookBody(updateWebhookBody?: Partial<UpdateWebhookBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpsertDisplayRuleRequestBody The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpsertDisplayRuleRequestBody(upsertDisplayRuleRequestBody?: Partial<UpsertDisplayRuleRequestBody> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpsertDisplayRuleRequestBody_content The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpsertDisplayRuleRequestBody_content(upsertDisplayRuleRequestBody_content?: Partial<UpsertDisplayRuleRequestBody_content> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpsertDisplayRuleRequestBody_content_sections The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpsertDisplayRuleRequestBody_content_sections(upsertDisplayRuleRequestBody_content_sections?: Partial<UpsertDisplayRuleRequestBody_content_sections> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpsertDisplayRuleRequestBody_scope The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpsertDisplayRuleRequestBody_scope(upsertDisplayRuleRequestBody_scope?: Partial<UpsertDisplayRuleRequestBody_scope> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UpsertDisplayRuleResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUpsertDisplayRuleResponse(upsertDisplayRuleResponse?: Partial<UpsertDisplayRuleResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UserMatch The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUserMatch(userMatch?: Partial<UserMatch> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UserMatch_completedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUserMatch_completedAt(userMatch_completedAt?: Partial<Parsable | string | UserMatch_completedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UserMatch_completedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUserMatch_completedAtMember1(userMatch_completedAtMember1?: Partial<UserMatch_completedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UserMatch_scheduledAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUserMatch_scheduledAt(userMatch_scheduledAt?: Partial<Parsable | string | UserMatch_scheduledAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UserMatch_scheduledAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUserMatch_scheduledAtMember1(userMatch_scheduledAtMember1?: Partial<UserMatch_scheduledAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UserMatch_startedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUserMatch_startedAt(userMatch_startedAt?: Partial<Parsable | string | UserMatch_startedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param UserMatch_startedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoUserMatch_startedAtMember1(userMatch_startedAtMember1?: Partial<UserMatch_startedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery(webhookDelivery?: Partial<WebhookDelivery> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_deliveredAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_deliveredAt(webhookDelivery_deliveredAt?: Partial<Parsable | number | WebhookDelivery_deliveredAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_deliveredAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_deliveredAtMember1(webhookDelivery_deliveredAtMember1?: Partial<WebhookDelivery_deliveredAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_errorMessage The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_errorMessage(webhookDelivery_errorMessage?: Partial<Parsable | string | WebhookDelivery_errorMessageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_errorMessageMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_errorMessageMember1(webhookDelivery_errorMessageMember1?: Partial<WebhookDelivery_errorMessageMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_nextAttemptAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_nextAttemptAt(webhookDelivery_nextAttemptAt?: Partial<Parsable | number | WebhookDelivery_nextAttemptAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_nextAttemptAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_nextAttemptAtMember1(webhookDelivery_nextAttemptAtMember1?: Partial<WebhookDelivery_nextAttemptAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_statusCode The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_statusCode(webhookDelivery_statusCode?: Partial<Parsable | number | WebhookDelivery_statusCodeMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookDelivery_statusCodeMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookDelivery_statusCodeMember1(webhookDelivery_statusCodeMember1?: Partial<WebhookDelivery_statusCodeMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookEndpoint The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookEndpoint(webhookEndpoint?: Partial<WebhookEndpoint> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookEndpoint_label The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookEndpoint_label(webhookEndpoint_label?: Partial<Parsable | string | WebhookEndpoint_labelMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookEndpoint_labelMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookEndpoint_labelMember1(webhookEndpoint_labelMember1?: Partial<WebhookEndpoint_labelMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookEndpoint_lastDeliveredAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookEndpoint_lastDeliveredAt(webhookEndpoint_lastDeliveredAt?: Partial<Parsable | number | WebhookEndpoint_lastDeliveredAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookEndpoint_lastDeliveredAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookEndpoint_lastDeliveredAtMember1(webhookEndpoint_lastDeliveredAtMember1?: Partial<WebhookEndpoint_lastDeliveredAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookEndpoint_lastFailedAt The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookEndpoint_lastFailedAt(webhookEndpoint_lastFailedAt?: Partial<Parsable | number | WebhookEndpoint_lastFailedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookEndpoint_lastFailedAtMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookEndpoint_lastFailedAtMember1(webhookEndpoint_lastFailedAtMember1?: Partial<WebhookEndpoint_lastFailedAtMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookListResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookListResponse(webhookListResponse?: Partial<WebhookListResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookOk The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookOk(webhookOk?: Partial<WebhookOk> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookReplayResult The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookReplayResult(webhookReplayResult?: Partial<WebhookReplayResult> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookSecret The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookSecret(webhookSecret?: Partial<WebhookSecret> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param WebhookTestResult The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWebhookTestResult(webhookTestResult?: Partial<WebhookTestResult> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Filters and offset pagination for discovering leagues.
 */
export interface DiscoverLeaguesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Filter to leagues that include this game id.
     */
    gameId?: string | null;
    /**
     * Page size (1-50). Defaults to 12.
     */
    limit?: number | null;
    /**
     * 1-based page number. Defaults to 1.
     */
    page?: number | null;
    /**
     * Free-text search across league names.
     */
    search?: string | null;
}
/**
 * Standard API error response.
 */
export interface ErrorEscaped extends ApiError, Parsable {
    /**
     * Optional human-readable explanation. Often absent on auth/permission errors.
     */
    details?: string | null;
    /**
     * Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
     */
    errorEscaped?: string | null;
}
/**
 * Escalates a league support ticket to TeamBattles staff.
 */
export interface EscalateLeagueTicketRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The reason property
     */
    reason?: string | null;
}
export interface EscalateLeagueTicketResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Forfeits the match as the API key owner.
 */
export interface ForfeitMatchRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional forfeit reason.
     */
    reason?: string | null;
}
export interface ForfeitMatchResponse extends Parsable {
    /**
     * The matchId property
     */
    matchId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Game definition.
 */
export interface Game extends Parsable {
    /**
     * Game ID.
     */
    id?: string | null;
    /**
     * Game name key for i18n lookup.
     */
    nameKey?: string | null;
}
/**
 * Outcome for a single (match, map) item in a multi-match batch.
 */
export interface GameBatchMatchScoreResult extends Parsable {
    /**
     * Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
     */
    errorEscaped?: string | null;
    /**
     * Index of the map this result refers to.
     */
    mapIndex?: number | null;
    /**
     * Match ID this result refers to.
     */
    matchId?: string | null;
    /**
     * Per-item outcome: "confirmed" on success, "failed" otherwise.
     */
    status?: string | null;
}
/**
 * Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
 */
export interface GameBatchMatchScoresBody extends AdditionalDataHolder, Parsable {
    /**
     * Map scores to submit across one or more matches. 1-50 entries.
     */
    items?: GameMultiMatchScoreItem[] | null;
}
/**
 * Result of a multi-match batch map-score submission. Always returned with HTTP 200; inspect per-item status.
 */
export interface GameBatchMatchScoresResponse extends Parsable {
    /**
     * Number of items that were confirmed.
     */
    count?: number | null;
    /**
     * Per-item results, in submission order.
     */
    submitted?: GameBatchMatchScoreResult[] | null;
    /**
     * True only when every submitted item was confirmed.
     */
    success?: boolean | null;
}
/**
 * Outcome for a single submitted map score.
 */
export interface GameBatchScoreResult extends Parsable {
    /**
     * Failure reason, present only when status is failed.
     */
    errorEscaped?: string | null;
    /**
     * Index of the map this result refers to.
     */
    mapIndex?: number | null;
    /**
     * Per-map outcome: "confirmed" on success, "failed" otherwise.
     */
    status?: string | null;
}
/**
 * Request body for submitting one or more map scores in a single call.
 */
export interface GameBatchScoresBody extends AdditionalDataHolder, Parsable {
    /**
     * Map scores to submit. Must contain at least one entry.
     */
    maps?: GameMapScoreInput[] | null;
}
/**
 * Result of a batch map-score submission.
 */
export interface GameBatchScoresResponse extends Parsable {
    /**
     * Number of map scores that were confirmed.
     */
    count?: number | null;
    /**
     * Per-map results, in submission order.
     */
    submitted?: GameBatchScoreResult[] | null;
    /**
     * True only when every submitted map score was confirmed.
     */
    success?: boolean | null;
}
/**
 * Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
 */
export interface GameCreateMatchBody extends AdditionalDataHolder, Parsable {
    /**
     * ID of the opposing team. Required - game-originated matches are two-sided. Must belong to the key's bound game.
     */
    acceptedTeamId?: string | null;
    /**
     * Number of maps in the series. One of 1, 3, 5, or 7.
     */
    bestOf?: number | null;
    /**
     * ID of the creating team. Must belong to the key's bound game.
     */
    creatorTeamId?: string | null;
    /**
     * Game mode identifier (e.g. search_and_destroy).
     */
    gameModeId?: string | null;
    /**
     * Allowed input device (e.g. ALL).
     */
    inputDevice?: GameCreateMatchBody_inputDevice | null;
    /**
     * Map preference mode (PREFERRED, VETO, or MANUAL).
     */
    mapPreferenceMode?: GameCreateMatchBody_mapPreferenceMode | null;
    /**
     * Map selection type (COMPETITIVE or FLEX).
     */
    mapSelectionType?: GameCreateMatchBody_mapSelectionType | null;
    /**
     * Match platform (e.g. CROSSPLAY).
     */
    platform?: GameCreateMatchBody_platform | null;
    /**
     * Match region (e.g. NONE).
     */
    region?: GameCreateMatchBody_region | null;
    /**
     * Optional scheduled start time (epoch ms).
     */
    scheduledAt?: number | null;
    /**
     * Optional pre-selected map IDs.
     */
    selectedMaps?: string[] | null;
    /**
     * Optional pre-selected objective IDs.
     */
    selectedObjectives?: string[] | null;
    /**
     * Players per team (validated against the game's min/max).
     */
    teamSize?: number | null;
}
export type GameCreateMatchBody_inputDevice = (typeof GameCreateMatchBody_inputDeviceObject)[keyof typeof GameCreateMatchBody_inputDeviceObject];
export type GameCreateMatchBody_mapPreferenceMode = (typeof GameCreateMatchBody_mapPreferenceModeObject)[keyof typeof GameCreateMatchBody_mapPreferenceModeObject];
export type GameCreateMatchBody_mapSelectionType = (typeof GameCreateMatchBody_mapSelectionTypeObject)[keyof typeof GameCreateMatchBody_mapSelectionTypeObject];
export type GameCreateMatchBody_platform = (typeof GameCreateMatchBody_platformObject)[keyof typeof GameCreateMatchBody_platformObject];
export type GameCreateMatchBody_region = (typeof GameCreateMatchBody_regionObject)[keyof typeof GameCreateMatchBody_regionObject];
/**
 * Result of a successful game-originated match creation.
 */
export interface GameCreateMatchResponse extends Parsable {
    /**
     * ID of the newly created match.
     */
    matchId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Server response time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * A team as embedded in the game-developer match-detail response ({ _id, name, tag }).
 */
export interface GameDetailTeam extends Parsable {
    /**
     * Team ID.
     */
    id?: string | null;
    /**
     * Team name.
     */
    name?: string | null;
    /**
     * Team tag (short identifier).
     */
    tag?: string | null;
}
/**
 * Request body for forfeiting a match on behalf of one participating team.
 */
export interface GameForfeitBody extends AdditionalDataHolder, Parsable {
    /**
     * ID of the team that forfeits. Must be a participant of the match.
     */
    forfeitingTeamId?: string | null;
    /**
     * Optional human-readable forfeit reason, recorded on the match.
     */
    reason?: string | null;
}
/**
 * Result of a successful match forfeit.
 */
export interface GameForfeitResponse extends Parsable {
    /**
     * ID of the team that forfeited.
     */
    forfeitedByTeamId?: string | null;
    /**
     * ID of the forfeited match.
     */
    matchId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Server response time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * One map's score within a batch submission.
 */
export interface GameMapScoreInput extends AdditionalDataHolder, Parsable {
    /**
     * Score for the creator team (integer, 0-1000).
     */
    creatorTeamScore?: number | null;
    /**
     * Identifier of the map that was played.
     */
    mapId?: string | null;
    /**
     * Zero-based index of the map within the series.
     */
    mapIndex?: number | null;
    /**
     * Score for the opponent (accepted) team (integer, 0-1000).
     */
    opponentTeamScore?: number | null;
    /**
     * Optional per-player stats keyed by user ID.
     */
    playerStats?: GameMapScoreInput_playerStats | null;
    /**
     * Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
     */
    screenshotStorageIds?: string[] | null;
    /**
     * Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
     */
    screenshotUrls?: string[] | null;
}
/**
 * Optional per-player stats keyed by user ID.
 */
export interface GameMapScoreInput_playerStats extends AdditionalDataHolder, Parsable {
}
/**
 * Match as returned by the game-developer endpoints (includes scores, omits the game object).
 */
export interface GameMatch extends Parsable {
    /**
     * The acceptedTeam property
     */
    acceptedTeam?: Team | null;
    /**
     * The acceptedTeamScore property
     */
    acceptedTeamScore?: GameMatch_acceptedTeamScoreMember1 | number | null;
    /**
     * Number of maps in the series (1, 3, 5, or 7).
     */
    bestOf?: number | null;
    /**
     * Completion time (ISO 8601).
     */
    completedAt?: GameMatch_completedAtMember1 | string | null;
    /**
     * Creation time (ISO 8601).
     */
    createdAt?: GameMatch_createdAtMember1 | string | null;
    /**
     * The creatorTeam property
     */
    creatorTeam?: Team | null;
    /**
     * The creatorTeamScore property
     */
    creatorTeamScore?: GameMatch_creatorTeamScoreMember1 | number | null;
    /**
     * Game mode identifier (from the match's gameModeId).
     */
    gameMode?: string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * Scheduled start time (ISO 8601).
     */
    scheduledAt?: GameMatch_scheduledAtMember1 | string | null;
    /**
     * Actual start time (ISO 8601).
     */
    startedAt?: GameMatch_startedAtMember1 | string | null;
    /**
     * Lifecycle status of a match.
     */
    status?: MatchStatus | null;
}
export type GameMatch_acceptedTeamScore = GameMatch_acceptedTeamScoreMember1 | number;
export interface GameMatch_acceptedTeamScoreMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatch_completedAt = GameMatch_completedAtMember1 | string;
export interface GameMatch_completedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatch_createdAt = GameMatch_createdAtMember1 | string;
export interface GameMatch_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatch_creatorTeamScore = GameMatch_creatorTeamScoreMember1 | number;
export interface GameMatch_creatorTeamScoreMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatch_scheduledAt = GameMatch_scheduledAtMember1 | string;
export interface GameMatch_scheduledAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatch_startedAt = GameMatch_startedAtMember1 | string;
export interface GameMatch_startedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Detailed match payload returned inside the game-developer match-detail response.
 */
export interface GameMatchDetail extends Parsable {
    /**
     * The acceptedTeam property
     */
    acceptedTeam?: GameDetailTeam | null;
    /**
     * The acceptedTeamScore property
     */
    acceptedTeamScore?: GameMatchDetail_acceptedTeamScoreMember1 | number | null;
    /**
     * Number of maps in the series (1, 3, 5, or 7).
     */
    bestOf?: number | null;
    /**
     * Completion time (ISO 8601).
     */
    completedAt?: GameMatchDetail_completedAtMember1 | string | null;
    /**
     * Creation time (ISO 8601).
     */
    createdAt?: GameMatchDetail_createdAtMember1 | string | null;
    /**
     * The creatorTeam property
     */
    creatorTeam?: GameDetailTeam | null;
    /**
     * The creatorTeamScore property
     */
    creatorTeamScore?: GameMatchDetail_creatorTeamScoreMember1 | number | null;
    /**
     * Game ID the match belongs to.
     */
    gameId?: string | null;
    /**
     * Game mode identifier (from the match's gameModeId).
     */
    gameMode?: string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * League this match belongs to, if any (SP-7 league wave).
     */
    leagueId?: GameMatchDetail_leagueIdMember1 | string | null;
    /**
     * League season this match belongs to, if any.
     */
    leagueSeasonId?: GameMatchDetail_leagueSeasonIdMember1 | string | null;
    /**
     * Losing team ID once the match completes.
     */
    loserTeamId?: GameMatchDetail_loserTeamIdMember1 | string | null;
    /**
     * Scheduled start time (ISO 8601).
     */
    scheduledAt?: GameMatchDetail_scheduledAtMember1 | string | null;
    /**
     * Actual start time (ISO 8601).
     */
    startedAt?: GameMatchDetail_startedAtMember1 | string | null;
    /**
     * Lifecycle status of a match.
     */
    status?: MatchStatus | null;
    /**
     * Winning team ID once the match completes.
     */
    winnerTeamId?: GameMatchDetail_winnerTeamIdMember1 | string | null;
}
export type GameMatchDetail_acceptedTeamScore = GameMatchDetail_acceptedTeamScoreMember1 | number;
export interface GameMatchDetail_acceptedTeamScoreMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_completedAt = GameMatchDetail_completedAtMember1 | string;
export interface GameMatchDetail_completedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_createdAt = GameMatchDetail_createdAtMember1 | string;
export interface GameMatchDetail_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_creatorTeamScore = GameMatchDetail_creatorTeamScoreMember1 | number;
export interface GameMatchDetail_creatorTeamScoreMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_leagueId = GameMatchDetail_leagueIdMember1 | string;
export interface GameMatchDetail_leagueIdMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_leagueSeasonId = GameMatchDetail_leagueSeasonIdMember1 | string;
export interface GameMatchDetail_leagueSeasonIdMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_loserTeamId = GameMatchDetail_loserTeamIdMember1 | string;
export interface GameMatchDetail_loserTeamIdMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_scheduledAt = GameMatchDetail_scheduledAtMember1 | string;
export interface GameMatchDetail_scheduledAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_startedAt = GameMatchDetail_startedAtMember1 | string;
export interface GameMatchDetail_startedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameMatchDetail_winnerTeamId = GameMatchDetail_winnerTeamIdMember1 | string;
export interface GameMatchDetail_winnerTeamIdMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Envelope for GET /game/matches/{matchId}: the match plus a response timestamp.
 */
export interface GameMatchDetailResponse extends Parsable {
    /**
     * Detailed match payload returned inside the game-developer match-detail response.
     */
    match?: GameMatchDetail | null;
    /**
     * Server response time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Team rosters for a match, grouped by creator and accepted team.
 */
export interface GameMatchRostersResponse extends Parsable {
    /**
     * Players on the accepted team (empty when unaccepted).
     */
    acceptedRoster?: GameRosterPlayer[] | null;
    /**
     * ID of the team that accepted the match, or null if unaccepted.
     */
    acceptedTeamId?: GameMatchRostersResponse_acceptedTeamIdMember1 | string | null;
    /**
     * Players on the creator team.
     */
    creatorRoster?: GameRosterPlayer[] | null;
    /**
     * ID of the team that created the match.
     */
    creatorTeamId?: string | null;
    /**
     * Server response time (ISO 8601).
     */
    timestamp?: string | null;
}
export type GameMatchRostersResponse_acceptedTeamId = GameMatchRostersResponse_acceptedTeamIdMember1 | string;
export interface GameMatchRostersResponse_acceptedTeamIdMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * One match's single map score within a multi-match batch submission.
 */
export interface GameMultiMatchScoreItem extends AdditionalDataHolder, Parsable {
    /**
     * Score for the creator team (integer, 0-1000).
     */
    creatorTeamScore?: number | null;
    /**
     * Identifier of the map that was played.
     */
    mapId?: string | null;
    /**
     * Zero-based index of the map within the series.
     */
    mapIndex?: number | null;
    /**
     * ID of the match this map score belongs to.
     */
    matchId?: string | null;
    /**
     * Score for the opponent (accepted) team (integer, 0-1000).
     */
    opponentTeamScore?: number | null;
    /**
     * Optional per-player stats keyed by user ID.
     */
    playerStats?: GameMultiMatchScoreItem_playerStats | null;
    /**
     * Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
     */
    screenshotStorageIds?: string[] | null;
    /**
     * Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
     */
    screenshotUrls?: string[] | null;
}
/**
 * Optional per-player stats keyed by user ID.
 */
export interface GameMultiMatchScoreItem_playerStats extends AdditionalDataHolder, Parsable {
}
/**
 * Request body for submitting or updating player stats for an existing map score.
 */
export interface GamePlayerStatsBody extends AdditionalDataHolder, Parsable {
    /**
     * Zero-based index of the map whose stats are being updated.
     */
    mapIndex?: number | null;
    /**
     * Per-player stats keyed by user ID. The map score must already exist.
     */
    playerStats?: GamePlayerStatsBody_playerStats | null;
}
/**
 * Per-player stats keyed by user ID. The map score must already exist.
 */
export interface GamePlayerStatsBody_playerStats extends AdditionalDataHolder, Parsable {
}
/**
 * Result of a successful player-stats update.
 */
export interface GamePlayerStatsResponse extends Parsable {
    /**
     * Operation performed, always "updated" on success.
     */
    action?: string | null;
    /**
     * Index of the map whose stats were updated.
     */
    mapIndex?: number | null;
    /**
     * The success property
     */
    success?: boolean | null;
}
/**
 * Result of deleting a game rank.
 */
export interface GameRankDeleteResponse extends Parsable {
    /**
     * True when a rank was removed; false when none existed (no-op).
     */
    deleted?: boolean | null;
    /**
     * ISO 8601 response timestamp.
     */
    timestamp?: string | null;
}
/**
 * The API key owner's game ranks.
 */
export interface GameRankListResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The gameRanks property
     */
    gameRanks?: ApiGameRank[] | null;
    /**
     * ISO 8601 response timestamp.
     */
    timestamp?: string | null;
}
/**
 * Upsert the API key owner's rank for one (gameId, mode) slot.
 */
export interface GameRankUpsertBody extends AdditionalDataHolder, Parsable {
    /**
     * Game definition ID to set the rank for (a playable game).
     */
    gameId?: GameRankUpsertBody_gameId | null;
    /**
     * Whether the player is in the Top 250 ladder.
     */
    isTop250?: boolean | null;
    /**
     * Game mode / playlist the rank applies to (a valid playlist ID).
     */
    mode?: string | null;
    /**
     * Skill rating (integer, 0-100000).
     */
    sr?: number | null;
    /**
     * Top 250 ladder position (1-250); only meaningful when isTop250.
     */
    top250Rank?: number | null;
    /**
     * Current win streak count (0-99).
     */
    winstreak?: number | null;
}
export type GameRankUpsertBody_gameId = (typeof GameRankUpsertBody_gameIdObject)[keyof typeof GameRankUpsertBody_gameIdObject];
/**
 * Result of upserting a game rank.
 */
export interface GameRankUpsertResponse extends Parsable {
    /**
     * ID of the upserted game rank row.
     */
    id?: string | null;
    /**
     * ISO 8601 response timestamp.
     */
    timestamp?: string | null;
}
/**
 * A single player entry on a match roster.
 */
export interface GameRosterPlayer extends Parsable {
    /**
     * Whether the player has checked in for the match.
     */
    isCheckedIn?: boolean | null;
    /**
     * Player's display name, or null if unset.
     */
    name?: GameRosterPlayer_nameMember1 | string | null;
    /**
     * ID of the team the player belongs to.
     */
    teamId?: string | null;
    /**
     * Player's user ID.
     */
    userId?: string | null;
    /**
     * Player's username, or null if unset.
     */
    username?: GameRosterPlayer_usernameMember1 | string | null;
}
export type GameRosterPlayer_name = GameRosterPlayer_nameMember1 | string;
export interface GameRosterPlayer_nameMember1 extends AdditionalDataHolder, Parsable {
}
export type GameRosterPlayer_username = GameRosterPlayer_usernameMember1 | string;
export interface GameRosterPlayer_usernameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * A single map score as returned when reading scores.
 */
export interface GameScore extends Parsable {
    /**
     * When the score was confirmed (ISO 8601).
     */
    confirmedAt?: GameScore_confirmedAtMember1 | string | null;
    /**
     * Score for the creator team.
     */
    creatorTeamScore?: number | null;
    /**
     * Identifier of the map that was played.
     */
    mapId?: string | null;
    /**
     * Zero-based index of the map within the series.
     */
    mapIndex?: number | null;
    /**
     * Score for the opponent (accepted) team.
     */
    opponentTeamScore?: number | null;
    /**
     * Per-player stats keyed by user ID, or null when none recorded.
     */
    playerStats?: UntypedNode | null;
    /**
     * Confirmation state: "CONFIRMED" or "PENDING".
     */
    scoreStatus?: string | null;
    /**
     * When the score was submitted (ISO 8601).
     */
    submittedAt?: GameScore_submittedAtMember1 | string | null;
}
export type GameScore_confirmedAt = GameScore_confirmedAtMember1 | string;
export interface GameScore_confirmedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type GameScore_submittedAt = GameScore_submittedAtMember1 | string;
export interface GameScore_submittedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * All map scores for a match plus the aggregate series tally.
 */
export interface GameScoresResponse extends Parsable {
    /**
     * All recorded map scores for the match.
     */
    scores?: GameScore[] | null;
    /**
     * Aggregate map-win tally across the series.
     */
    seriesScore?: GameSeriesScore | null;
    /**
     * Server response time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Aggregate map-win tally across the series.
 */
export interface GameSeriesScore extends Parsable {
    /**
     * Confirmed map wins for the creator team.
     */
    creatorMapWins?: number | null;
    /**
     * Confirmed map wins for the opponent team.
     */
    opponentMapWins?: number | null;
}
/**
 * Request body for submitting a single map's score (mapIndex comes from the path).
 */
export interface GameSingleMapScoreBody extends AdditionalDataHolder, Parsable {
    /**
     * Score for the creator team (integer, 0-1000).
     */
    creatorTeamScore?: number | null;
    /**
     * Identifier of the map that was played.
     */
    mapId?: string | null;
    /**
     * Score for the opponent (accepted) team (integer, 0-1000).
     */
    opponentTeamScore?: number | null;
    /**
     * Optional per-player stats keyed by user ID.
     */
    playerStats?: GameSingleMapScoreBody_playerStats | null;
    /**
     * Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
     */
    screenshotStorageIds?: string[] | null;
    /**
     * Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
     */
    screenshotUrls?: string[] | null;
}
/**
 * Optional per-player stats keyed by user ID.
 */
export interface GameSingleMapScoreBody_playerStats extends AdditionalDataHolder, Parsable {
}
/**
 * Result of submitting a single map score.
 */
export interface GameSingleMapScoreResponse extends Parsable {
    /**
     * Index of the map that was scored.
     */
    mapIndex?: number | null;
    /**
     * Confirmation state, always "CONFIRMED" on success.
     */
    scoreStatus?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
}
/**
 * Request body for updating a match's lifecycle status.
 */
export interface GameStatusUpdateBody extends AdditionalDataHolder, Parsable {
    /**
     * Target status. Allowed transitions: READY -> IN_PROGRESS, IN_PROGRESS -> COMPLETED|CANCELLED, ACCEPTED -> CANCELLED. COMPLETED is not accepted directly (matches complete automatically once scores are confirmed).
     */
    status?: string | null;
}
/**
 * Result of a successful match status transition.
 */
export interface GameStatusUpdateResponse extends Parsable {
    /**
     * ID of the updated match.
     */
    matchId?: string | null;
    /**
     * Match status after the transition.
     */
    newStatus?: string | null;
    /**
     * Match status before the transition.
     */
    previousStatus?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Server response time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * A freshly minted Convex storage upload URL. POST the image to it to receive a storageId for use on a downstream write.
 */
export interface ImageUploadUrlResponse extends Parsable {
    /**
     * Short-lived, single-use URL to POST the image bytes to.
     */
    uploadUrl?: string | null;
}
/**
 * Issues or updates a manual league member cooldown.
 */
export interface IssueCooldownRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Cooldown length in hours, from 1 to 8760.
     */
    cooldownHours?: number | null;
    /**
     * Optional admin note.
     */
    note?: string | null;
    /**
     * User ID receiving the cooldown.
     */
    userId?: string | null;
}
export interface IssueCooldownResponse extends Parsable {
    /**
     * League member cooldown ID.
     */
    cooldownId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Leaderboard rank lookup response.
 */
export interface LeaderboardRankResponse extends Parsable {
    /**
     * The gameSlug property
     */
    gameSlug?: LeaderboardRankResponse_gameSlugMember1 | string | null;
    /**
     * Resolved entity ID.
     */
    id?: string | null;
    /**
     * The rank property
     */
    rank?: number | LeaderboardRankResponse_rankMember1 | null;
    /**
     * Supported leaderboard sort field.
     */
    sortBy?: LeaderboardSortBy | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export type LeaderboardRankResponse_gameSlug = LeaderboardRankResponse_gameSlugMember1 | string;
export interface LeaderboardRankResponse_gameSlugMember1 extends AdditionalDataHolder, Parsable {
}
export type LeaderboardRankResponse_rank = number | LeaderboardRankResponse_rankMember1;
export interface LeaderboardRankResponse_rankMember1 extends AdditionalDataHolder, Parsable {
}
export type LeaderboardSortBy = (typeof LeaderboardSortByObject)[keyof typeof LeaderboardSortByObject];
/**
 * Aggregate stats used for leaderboard ranking.
 */
export interface LeaderboardStats extends Parsable {
    /**
     * The experience property
     */
    experience?: number | null;
    /**
     * The losses property
     */
    losses?: number | null;
    /**
     * The matchesPlayed property
     */
    matchesPlayed?: number | null;
    /**
     * The winRate property
     */
    winRate?: number | null;
    /**
     * The wins property
     */
    wins?: number | null;
}
/**
 * Cursor pagination options for a league activity feed.
 */
export interface LeagueActivityFeedRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The cursor property
     */
    cursor?: LeagueActivityFeedRequestBody_cursorMember1 | string | null;
    /**
     * The limit property
     */
    limit?: number | null;
}
export type LeagueActivityFeedRequestBody_cursor = LeagueActivityFeedRequestBody_cursorMember1 | string;
export interface LeagueActivityFeedRequestBody_cursorMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * A paginated league activity feed.
 */
export interface LeagueActivityFeedResponse extends Parsable {
    /**
     * The activities property
     */
    activities?: UntypedNode | null;
    /**
     * The hasMore property
     */
    hasMore?: boolean | null;
    /**
     * The nextCursor property
     */
    nextCursor?: string | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * League application eligibility.
 */
export interface LeagueApplyEligibility extends Parsable {
    /**
     * API key owner's apply-to-join eligibility.
     */
    eligibility?: LeagueApplyEligibility_eligibility | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * API key owner's apply-to-join eligibility.
 */
export interface LeagueApplyEligibility_eligibility extends Parsable {
    /**
     * The eligibleTeams property
     */
    eligibleTeams?: LeagueApplyEligibility_eligibility_eligibleTeams[] | null;
    /**
     * The hasApprovedTeamHere property
     */
    hasApprovedTeamHere?: boolean | null;
    /**
     * The isAuthed property
     */
    isAuthed?: boolean | null;
    /**
     * The pendingTeams property
     */
    pendingTeams?: LeagueApplyEligibility_eligibility_pendingTeams[] | null;
}
export interface LeagueApplyEligibility_eligibility_eligibleTeams extends AdditionalDataHolder, Parsable {
}
export interface LeagueApplyEligibility_eligibility_pendingTeams extends AdditionalDataHolder, Parsable {
}
/**
 * Optional team-specific league application eligibility selector.
 */
export interface LeagueApplyEligibilityRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional team ID to check. The API key owner must lead it.
     */
    teamId?: string | null;
}
/**
 * Team bans for a league.
 */
export interface LeagueBans extends Parsable {
    /**
     * Enriched team ban records with computed status.
     */
    bans?: LeagueBans_bans[] | null;
    /**
     * Number of bans returned.
     */
    count?: number | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeagueBans_bans extends AdditionalDataHolder, Parsable {
}
export interface LeagueBrandingSocials extends AdditionalDataHolder, Parsable {
    /**
     * The discord property
     */
    discord?: string | null;
    /**
     * The twitch property
     */
    twitch?: string | null;
    /**
     * The twitter property
     */
    twitter?: string | null;
    /**
     * The website property
     */
    website?: string | null;
    /**
     * The youtube property
     */
    youtube?: string | null;
}
/**
 * Aggregate league admin dashboard statistics.
 */
export interface LeagueDashboardStatsResponse extends Parsable {
    /**
     * The stats property
     */
    stats?: LeagueDashboardStatsResponse_stats | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface LeagueDashboardStatsResponse_stats extends Parsable {
    /**
     * The activeSeasons property
     */
    activeSeasons?: number | null;
    /**
     * The openTickets property
     */
    openTickets?: number | null;
    /**
     * The pendingApplications property
     */
    pendingApplications?: number | null;
    /**
     * The teamCount property
     */
    teamCount?: number | null;
}
/**
 * League display rules.
 */
export interface LeagueDisplayRules extends Parsable {
    /**
     * Number of display rules returned.
     */
    count?: number | null;
    /**
     * Display rule documents for the league game.
     */
    displayRules?: LeagueDisplayRules_displayRules[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeagueDisplayRules_displayRules extends AdditionalDataHolder, Parsable {
}
/**
 * Display rule selector.
 */
export interface LeagueDisplayRulesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Game ID to list display rules for.
     */
    gameId?: string | null;
}
/**
 * Games configured for a league.
 */
export interface LeagueGames extends Parsable {
    /**
     * Number of configured games returned.
     */
    count?: number | null;
    /**
     * Games configured for the league.
     */
    games?: LeagueGames_games[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeagueGames_games extends AdditionalDataHolder, Parsable {
}
export interface LeagueGameWriteResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Staff members of a league.
 */
export interface LeagueMembers extends Parsable {
    /**
     * Number of members returned.
     */
    count?: number | null;
    /**
     * Enriched league staff member records.
     */
    members?: LeagueMembers_members[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeagueMembers_members extends AdditionalDataHolder, Parsable {
}
/**
 * Penalties and cooldowns for a league.
 */
export interface LeaguePenalties extends Parsable {
    /**
     * Enriched member cooldown records (empty when type is penalties).
     */
    cooldowns?: LeaguePenalties_cooldowns[] | null;
    /**
     * Combined number of penalties and cooldowns returned.
     */
    count?: number | null;
    /**
     * Enriched penalty records (empty when type is cooldowns).
     */
    penalties?: LeaguePenalties_penalties[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeaguePenalties_cooldowns extends AdditionalDataHolder, Parsable {
}
export interface LeaguePenalties_penalties extends AdditionalDataHolder, Parsable {
}
/**
 * Public profile for a single league.
 */
export interface LeagueProfile extends Parsable {
    /**
     * Currently active seasons.
     */
    activeSeasons?: LeagueProfile_activeSeasons[] | null;
    /**
     * League avatar image URL.
     */
    avatarUrl?: LeagueProfile_avatarUrlMember1 | string | null;
    /**
     * League banner image URL.
     */
    bannerUrl?: LeagueProfile_bannerUrlMember1 | string | null;
    /**
     * Creation timestamp (epoch milliseconds).
     */
    createdAt?: number | null;
    /**
     * League description.
     */
    description?: string | null;
    /**
     * Games associated with the league.
     */
    games?: LeagueProfile_games[] | null;
    /**
     * League ID.
     */
    id?: string | null;
    /**
     * Whether the league is featured.
     */
    isFeatured?: boolean | null;
    /**
     * Whether the league is verified.
     */
    isVerified?: boolean | null;
    /**
     * League display name.
     */
    name?: string | null;
    /**
     * URL-friendly league identifier.
     */
    slug?: string | null;
    /**
     * Social media links.
     */
    socials?: UntypedNode | null;
    /**
     * Number of staff members.
     */
    staffCount?: number | null;
    /**
     * League status (e.g. active, inactive).
     */
    status?: string | null;
    /**
     * Number of teams in the league.
     */
    teamCount?: number | null;
}
export interface LeagueProfile_activeSeasons extends AdditionalDataHolder, Parsable {
}
export type LeagueProfile_avatarUrl = LeagueProfile_avatarUrlMember1 | string;
export interface LeagueProfile_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type LeagueProfile_bannerUrl = LeagueProfile_bannerUrlMember1 | string;
export interface LeagueProfile_bannerUrlMember1 extends AdditionalDataHolder, Parsable {
}
export interface LeagueProfile_games extends AdditionalDataHolder, Parsable {
}
/**
 * League profile response envelope.
 */
export interface LeagueProfileResponse extends Parsable {
    /**
     * Public profile for a single league.
     */
    league?: LeagueProfile | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Game rules and points config for a league.
 */
export interface LeagueRules extends Parsable {
    /**
     * Points configuration document for the league + game, or null if unset.
     */
    pointsConfig?: UntypedNode | null;
    /**
     * Game rules document for the league + game, or null if unset.
     */
    rules?: UntypedNode | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Single league season response.
 */
export interface LeagueSeason extends Parsable {
    /**
     * The requested league season.
     */
    season?: LeagueSeason_season | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * The requested league season.
 */
export interface LeagueSeason_season extends AdditionalDataHolder, Parsable {
}
/**
 * Season selector options.
 */
export interface LeagueSeasonOptions extends Parsable {
    /**
     * Recommended default option.
     */
    defaultSeasonId?: LeagueSeasonOptions_defaultSeasonIdMember1 | string | null;
    /**
     * Season selector options for a league game.
     */
    seasons?: LeagueSeasonOptions_seasons[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export type LeagueSeasonOptions_defaultSeasonId = LeagueSeasonOptions_defaultSeasonIdMember1 | string;
export interface LeagueSeasonOptions_defaultSeasonIdMember1 extends AdditionalDataHolder, Parsable {
}
export interface LeagueSeasonOptions_seasons extends AdditionalDataHolder, Parsable {
}
/**
 * Season option selector.
 */
export interface LeagueSeasonOptionsRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Game ID to list season options for.
     */
    gameId?: string | null;
}
/**
 * Seasons for a league.
 */
export interface LeagueSeasons extends Parsable {
    /**
     * Number of seasons returned.
     */
    count?: number | null;
    /**
     * Season documents for the league.
     */
    seasons?: LeagueSeasons_seasons[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeagueSeasons_seasons extends AdditionalDataHolder, Parsable {
}
/**
 * Full league settings visible to league admins.
 */
export interface LeagueSettingsResponse extends Parsable {
    /**
     * The league property
     */
    league?: LeagueSettingsResponse_league | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface LeagueSettingsResponse_league extends AdditionalDataHolder, Parsable {
}
/**
 * League standings for a season.
 */
export interface LeagueStandings extends Parsable {
    /**
     * Number of teams returned.
     */
    count?: number | null;
    /**
     * Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
     */
    standings?: LeagueStandings_standings[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeagueStandings_standings extends AdditionalDataHolder, Parsable {
    /**
     * 1-based standings position.
     */
    rank?: number | null;
}
/**
 * Request body for updating a league match's lifecycle status.
 */
export interface LeagueStatusUpdateBody extends AdditionalDataHolder, Parsable {
    /**
     * Target status. Allowed league transitions: READY -> IN_PROGRESS|CANCELLED, ACCEPTED -> CANCELLED. COMPLETED is not accepted directly; matches complete automatically once scores are confirmed.
     */
    status?: string | null;
}
/**
 * Summary view of a league for discovery results.
 */
export interface LeagueSummary extends Parsable {
    /**
     * League avatar image URL.
     */
    avatarUrl?: LeagueSummary_avatarUrlMember1 | string | null;
    /**
     * League banner image URL.
     */
    bannerUrl?: LeagueSummary_bannerUrlMember1 | string | null;
    /**
     * Creation timestamp (epoch milliseconds).
     */
    createdAt?: number | null;
    /**
     * League description.
     */
    description?: string | null;
    /**
     * Games associated with the league.
     */
    games?: LeagueSummary_games[] | null;
    /**
     * League ID.
     */
    id?: string | null;
    /**
     * Whether the league is featured.
     */
    isFeatured?: boolean | null;
    /**
     * Whether the league is verified.
     */
    isVerified?: boolean | null;
    /**
     * League display name.
     */
    name?: string | null;
    /**
     * Aggregate season state across the league's games.
     */
    seasonStatus?: LeagueSummary_seasonStatus | null;
    /**
     * URL-friendly league identifier.
     */
    slug?: string | null;
    /**
     * League status.
     */
    status?: string | null;
    /**
     * Number of teams in the league.
     */
    teamCount?: number | null;
}
export type LeagueSummary_avatarUrl = LeagueSummary_avatarUrlMember1 | string;
export interface LeagueSummary_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
export type LeagueSummary_bannerUrl = LeagueSummary_bannerUrlMember1 | string;
export interface LeagueSummary_bannerUrlMember1 extends AdditionalDataHolder, Parsable {
}
export interface LeagueSummary_games extends AdditionalDataHolder, Parsable {
}
export type LeagueSummary_seasonStatus = (typeof LeagueSummary_seasonStatusObject)[keyof typeof LeagueSummary_seasonStatusObject];
/**
 * League rule templates.
 */
export interface LeagueTemplates extends Parsable {
    /**
     * Number of templates returned.
     */
    count?: number | null;
    /**
     * Rule templates visible to the API key owner.
     */
    templates?: LeagueTemplates_templates[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface LeagueTemplates_templates extends AdditionalDataHolder, Parsable {
}
/**
 * Template filters.
 */
export interface LeagueTemplatesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional game ID filter.
     */
    gameId?: string | null;
    /**
     * Optional official-template filter.
     */
    isOfficial?: boolean | null;
}
/**
 * Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
 */
export interface ListGameMatchesBody extends AdditionalDataHolder, Parsable {
    /**
     * Opaque continuation cursor from a prior page's pagination.cursor.
     */
    cursor?: string | null;
    /**
     * Page size (1-100, enforced by the handler). Defaults to the handler's internal default.
     */
    limit?: number | null;
    /**
     * Optional MatchStatus filter (e.g. IN_PROGRESS).
     */
    status?: string | null;
}
/**
 * A single map's score entry.
 */
export interface MapScoreItem extends Parsable {
    /**
     * The confirmedBy property
     */
    confirmedBy?: ScoreConfirmer | null;
    /**
     * Creation time (ISO 8601).
     */
    createdAt?: MapScoreItem_createdAtMember1 | string | null;
    /**
     * The creatorTeamScore property
     */
    creatorTeamScore?: number | null;
    /**
     * The mapId property
     */
    mapId?: string | null;
    /**
     * The mapIndex property
     */
    mapIndex?: number | null;
    /**
     * The opponentTeamScore property
     */
    opponentTeamScore?: number | null;
    /**
     * CONFIRMED or PENDING.
     */
    scoreStatus?: string | null;
    /**
     * The screenshotUrls property
     */
    screenshotUrls?: string[] | null;
    /**
     * The submittedBy property
     */
    submittedBy?: ScoreSubmitter | null;
}
export type MapScoreItem_createdAt = MapScoreItem_createdAtMember1 | string;
export interface MapScoreItem_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * All map scores for a match with a series summary.
 */
export interface MapScores extends Parsable {
    /**
     * The scores property
     */
    scores?: MapScoreItem[] | null;
    /**
     * The seriesScore property
     */
    seriesScore?: MapScores_seriesScore | null;
    /**
     * Response timestamp (ISO 8601).
     */
    timestamp?: string | null;
}
export interface MapScores_seriesScore extends Parsable {
    /**
     * The creatorMapWins property
     */
    creatorMapWins?: number | null;
    /**
     * The opponentMapWins property
     */
    opponentMapWins?: number | null;
}
/**
 * Marks one participating team ready as the API key owner.
 */
export interface MarkMatchReadyRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Team ID to mark ready.
     */
    teamId?: string | null;
}
export interface MarkMatchReadyResponse extends Parsable {
    /**
     * The matchReady property
     */
    matchReady?: boolean | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Filters and cursor pagination for public open-match discovery.
 */
export interface MatchDiscoverBody extends AdditionalDataHolder, Parsable {
    /**
     * The cursor property
     */
    cursor?: MatchDiscoverBody_cursorMember1 | string | null;
    /**
     * The gameId property
     */
    gameId?: string | null;
    /**
     * The gameSlug property
     */
    gameSlug?: string | null;
    /**
     * The leagueId property
     */
    leagueId?: string | null;
    /**
     * The leagueSeasonId property
     */
    leagueSeasonId?: string | null;
    /**
     * The limit property
     */
    limit?: number | null;
    /**
     * The matchType property
     */
    matchType?: MatchDiscoverBody_matchType | null;
    /**
     * The platform property
     */
    platform?: MatchDiscoverBody_platform | null;
    /**
     * The region property
     */
    region?: MatchDiscoverBody_region | null;
    /**
     * The scheduledAfter property
     */
    scheduledAfter?: string | null;
    /**
     * The scheduledBefore property
     */
    scheduledBefore?: string | null;
}
export type MatchDiscoverBody_cursor = MatchDiscoverBody_cursorMember1 | string;
export interface MatchDiscoverBody_cursorMember1 extends AdditionalDataHolder, Parsable {
}
export type MatchDiscoverBody_matchType = (typeof MatchDiscoverBody_matchTypeObject)[keyof typeof MatchDiscoverBody_matchTypeObject];
export type MatchDiscoverBody_platform = (typeof MatchDiscoverBody_platformObject)[keyof typeof MatchDiscoverBody_platformObject];
export type MatchDiscoverBody_region = (typeof MatchDiscoverBody_regionObject)[keyof typeof MatchDiscoverBody_regionObject];
/**
 * SP-2 open-match discovery page.
 */
export interface MatchDiscoverPage extends Parsable {
    /**
     * The data property
     */
    data?: ApiMatchDetail[] | null;
    /**
     * The hasMore property
     */
    hasMore?: boolean | null;
    /**
     * The nextCursor property
     */
    nextCursor?: MatchDiscoverPage_nextCursorMember1 | string | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export type MatchDiscoverPage_nextCursor = MatchDiscoverPage_nextCursorMember1 | string;
export interface MatchDiscoverPage_nextCursorMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Filters and cursor pagination for listing matches.
 */
export interface MatchesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * ISO 8601; only matches created at or after this time.
     */
    createdAfter?: string | null;
    /**
     * ISO 8601; only matches created at or before this time.
     */
    createdBefore?: string | null;
    /**
     * Opaque continuation cursor from a prior page's continueCursor.
     */
    cursor?: MatchesRequestBody_cursorMember1 | string | null;
    /**
     * Exclude matches with these MatchStatus codes; unknown values are ignored.
     */
    excludeStatuses?: string[] | null;
    /**
     * Filter to a single game by id.
     */
    gameId?: string | null;
    /**
     * Only include matches with these MatchStatus codes; unknown values are ignored.
     */
    includeStatuses?: string[] | null;
    /**
     * Page size (1-100). Defaults to 25.
     */
    numItems?: number | null;
    /**
     * Filter to matches against this opponent team (team id or slug).
     */
    opponentId?: string | null;
    /**
     * ISO 8601; only matches scheduled at or after this time.
     */
    scheduledAfter?: string | null;
    /**
     * ISO 8601; only matches scheduled at or before this time.
     */
    scheduledBefore?: string | null;
}
export type MatchesRequestBody_cursor = MatchesRequestBody_cursorMember1 | string;
export interface MatchesRequestBody_cursorMember1 extends AdditionalDataHolder, Parsable {
}
export type MatchStatus = (typeof MatchStatusObject)[keyof typeof MatchStatusObject];
/**
 * Ongoing matches for the API key owner's active teams.
 */
export interface OngoingMatchesResponse extends Parsable {
    /**
     * The matches property
     */
    matches?: ApiMatchDetail[] | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Organization leaderboard row.
 */
export interface OrganizationLeaderboardEntry extends Parsable {
    /**
     * The gameSlug property
     */
    gameSlug?: OrganizationLeaderboardEntry_gameSlugMember1 | string | null;
    /**
     * Organization ID.
     */
    id?: string | null;
    /**
     * Small API-safe organization summary.
     */
    organization?: ApiOrganizationSummary | null;
    /**
     * The rank property
     */
    rank?: number | null;
    /**
     * The stats property
     */
    stats?: OrganizationLeaderboardEntry_stats | null;
}
export type OrganizationLeaderboardEntry_gameSlug = OrganizationLeaderboardEntry_gameSlugMember1 | string;
export interface OrganizationLeaderboardEntry_gameSlugMember1 extends AdditionalDataHolder, Parsable {
}
export interface OrganizationLeaderboardEntry_stats extends Parsable {
    /**
     * The experience property
     */
    experience?: number | null;
    /**
     * The losses property
     */
    losses?: number | null;
    /**
     * The matchesPlayed property
     */
    matchesPlayed?: number | null;
    /**
     * The teamCount property
     */
    teamCount?: number | null;
    /**
     * The winRate property
     */
    winRate?: number | null;
    /**
     * The wins property
     */
    wins?: number | null;
}
/**
 * Organization leaderboard response.
 */
export interface OrganizationLeaderboardResponse extends Parsable {
    /**
     * The gameSlug property
     */
    gameSlug?: OrganizationLeaderboardResponse_gameSlugMember1 | string | null;
    /**
     * The organizations property
     */
    organizations?: OrganizationLeaderboardEntry[] | null;
    /**
     * Supported leaderboard sort field.
     */
    sortBy?: LeaderboardSortBy | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export type OrganizationLeaderboardResponse_gameSlug = OrganizationLeaderboardResponse_gameSlugMember1 | string;
export interface OrganizationLeaderboardResponse_gameSlugMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Type, team, game, and limit filters for league penalties and cooldowns.
 */
export interface PenaltiesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Filter penalties to a specific game id.
     */
    gameId?: string | null;
    /**
     * Maximum number of penalties to return (1-100). Defaults to 50.
     */
    limit?: number | null;
    /**
     * Filter penalties to a specific team id.
     */
    teamId?: string | null;
    /**
     * Which record kinds to return. Defaults to all.
     */
    type?: PenaltiesRequestBody_type | null;
}
export type PenaltiesRequestBody_type = (typeof PenaltiesRequestBody_typeObject)[keyof typeof PenaltiesRequestBody_typeObject];
/**
 * Player leaderboard row.
 */
export interface PlayerLeaderboardEntry extends Parsable {
    /**
     * User ID.
     */
    id?: string | null;
    /**
     * The rank property
     */
    rank?: number | null;
    /**
     * Aggregate stats used for leaderboard ranking.
     */
    stats?: LeaderboardStats | null;
    /**
     * API-safe public user profile.
     */
    user?: ApiUserProfile | null;
}
/**
 * Player leaderboard response.
 */
export interface PlayerLeaderboardResponse extends Parsable {
    /**
     * The players property
     */
    players?: PlayerLeaderboardEntry[] | null;
    /**
     * Supported leaderboard sort field.
     */
    sortBy?: LeaderboardSortBy | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export type ProfileVisibility = (typeof ProfileVisibilityObject)[keyof typeof ProfileVisibilityObject];
export interface RemoveDisplayRuleResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface RemoveLeagueGameResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface RemoveLeagueMemberResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Removes an approved team from a league.
 */
export interface RemoveLeagueTeamRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional removal reason shown to the team's captain.
     */
    reason?: string | null;
}
export interface RemoveLeagueTeamResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Reorders display rules.
 */
export interface ReorderDisplayRulesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Game ID whose display rules should reorder.
     */
    gameId?: string | null;
    /**
     * The items property
     */
    items?: ReorderDisplayRulesRequestBody_items[] | null;
}
export interface ReorderDisplayRulesRequestBody_items extends AdditionalDataHolder, Parsable {
    /**
     * Display rule ID.
     */
    id?: string | null;
    /**
     * The order property
     */
    order?: number | null;
}
export interface ReorderDisplayRulesResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Adds a reply or internal note to a league support ticket.
 */
export interface ReplyLeagueTicketRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The content property
     */
    content?: string | null;
    /**
     * The isInternal property
     */
    isInternal?: boolean | null;
}
export interface ReplyLeagueTicketResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Reports a chat message for staff moderation review.
 */
export interface ReportChatMessageRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional reason for the report (max 500 chars).
     */
    reason?: string | null;
}
export interface ReportChatMessageResponse extends Parsable {
    /**
     * True if the owner had already reported this message.
     */
    alreadyReported?: boolean | null;
    /**
     * Report ID (existing one if already reported).
     */
    reportId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export interface RequestLeagueShutdownResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Optional reason for revoking a league ban.
 */
export interface RevokeBanRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Optional revocation reason.
     */
    reason?: string | null;
}
export interface RevokeBanResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Game selector for league rules and points config.
 */
export interface RulesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Game id to fetch rules and points config for. Required.
     */
    gameId?: string | null;
}
export interface RuleWriteResponse extends Parsable {
    /**
     * The rulesId property
     */
    rulesId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Identity of the captain who confirmed a score.
 */
export interface ScoreConfirmer extends Parsable {
    /**
     * Confirmation time (ISO 8601).
     */
    confirmedAt?: ScoreConfirmer_confirmedAtMember1 | string | null;
    /**
     * The teamId property
     */
    teamId?: string | null;
    /**
     * The userId property
     */
    userId?: string | null;
}
export type ScoreConfirmer_confirmedAt = ScoreConfirmer_confirmedAtMember1 | string;
export interface ScoreConfirmer_confirmedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Result of submitting or confirming a map score.
 */
export interface ScoreSubmissionResult extends Parsable {
    /**
     * Action performed, e.g. "submitted" or "confirmed".
     */
    action?: string | null;
    /**
     * Zero-based map index that was affected.
     */
    mapIndex?: number | null;
    /**
     * Resulting score status, e.g. PENDING or CONFIRMED.
     */
    scoreStatus?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
}
/**
 * Identity of the captain who submitted a score.
 */
export interface ScoreSubmitter extends Parsable {
    /**
     * The name property
     */
    name?: ScoreSubmitter_nameMember1 | string | null;
    /**
     * The teamId property
     */
    teamId?: string | null;
    /**
     * The userId property
     */
    userId?: string | null;
}
export type ScoreSubmitter_name = ScoreSubmitter_nameMember1 | string;
export interface ScoreSubmitter_nameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Game and status filters for league seasons.
 */
export interface SeasonsRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Filter seasons to a specific game id.
     */
    gameId?: string | null;
    /**
     * Filter seasons by lifecycle status.
     */
    status?: SeasonsRequestBody_status | null;
}
export type SeasonsRequestBody_status = (typeof SeasonsRequestBody_statusObject)[keyof typeof SeasonsRequestBody_statusObject];
/**
 * Sends a message to the match chat room as the API key owner.
 */
export interface SendChatMessageRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Message body (1-255 chars).
     */
    content?: string | null;
}
export interface SendChatMessageResponse extends Parsable {
    /**
     * Created message ID.
     */
    messageId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Serializes information the current object
 * @param AcceptMatchRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAcceptMatchRequestBody(writer: SerializationWriter, acceptMatchRequestBody?: Partial<AcceptMatchRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AcceptMatchRequestBody_benchRoster The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAcceptMatchRequestBody_benchRoster(writer: SerializationWriter, acceptMatchRequestBody_benchRoster?: Partial<AcceptMatchRequestBody_benchRoster> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AcceptMatchRequestBody_disputedRules The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAcceptMatchRequestBody_disputedRules(writer: SerializationWriter, acceptMatchRequestBody_disputedRules?: Partial<AcceptMatchRequestBody_disputedRules> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AcceptMatchResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAcceptMatchResponse(writer: SerializationWriter, acceptMatchResponse?: Partial<AcceptMatchResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ActivateLeagueSeasonResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeActivateLeagueSeasonResponse(writer: SerializationWriter, activateLeagueSeasonResponse?: Partial<ActivateLeagueSeasonResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AddLeagueGameRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAddLeagueGameRequestBody(writer: SerializationWriter, addLeagueGameRequestBody?: Partial<AddLeagueGameRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AddLeagueMemberRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAddLeagueMemberRequestBody(writer: SerializationWriter, addLeagueMemberRequestBody?: Partial<AddLeagueMemberRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AddLeagueMemberResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAddLeagueMemberResponse(writer: SerializationWriter, addLeagueMemberResponse?: Partial<AddLeagueMemberResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AddTicketMessageRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAddTicketMessageRequestBody(writer: SerializationWriter, addTicketMessageRequestBody?: Partial<AddTicketMessageRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param AddTicketMessageResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeAddTicketMessageResponse(writer: SerializationWriter, addTicketMessageResponse?: Partial<AddTicketMessageResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiBatchStreamStatus The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiBatchStreamStatus(writer: SerializationWriter, apiBatchStreamStatus?: Partial<ApiBatchStreamStatus> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiBatchStreamStatusBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiBatchStreamStatusBody(writer: SerializationWriter, apiBatchStreamStatusBody?: Partial<ApiBatchStreamStatusBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiBatchStreamStatusEnvelope The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiBatchStreamStatusEnvelope(writer: SerializationWriter, apiBatchStreamStatusEnvelope?: Partial<ApiBatchStreamStatusEnvelope> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry(writer: SerializationWriter, apiGameCatalogEntry?: Partial<ApiGameCatalogEntry> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_bannerImage The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_bannerImage(writer: SerializationWriter, apiGameCatalogEntry_bannerImage?: Partial<Parsable | ApiGameCatalogEntry_bannerImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_bannerImageMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_bannerImageMember1(writer: SerializationWriter, apiGameCatalogEntry_bannerImageMember1?: Partial<ApiGameCatalogEntry_bannerImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_convexId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_convexId(writer: SerializationWriter, apiGameCatalogEntry_convexId?: Partial<Parsable | ApiGameCatalogEntry_convexIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_convexIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_convexIdMember1(writer: SerializationWriter, apiGameCatalogEntry_convexIdMember1?: Partial<ApiGameCatalogEntry_convexIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_coverImage The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_coverImage(writer: SerializationWriter, apiGameCatalogEntry_coverImage?: Partial<Parsable | ApiGameCatalogEntry_coverImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_coverImageMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_coverImageMember1(writer: SerializationWriter, apiGameCatalogEntry_coverImageMember1?: Partial<ApiGameCatalogEntry_coverImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_descriptionKey The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_descriptionKey(writer: SerializationWriter, apiGameCatalogEntry_descriptionKey?: Partial<Parsable | ApiGameCatalogEntry_descriptionKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_descriptionKeyMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_descriptionKeyMember1(writer: SerializationWriter, apiGameCatalogEntry_descriptionKeyMember1?: Partial<ApiGameCatalogEntry_descriptionKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_rulesLink The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_rulesLink(writer: SerializationWriter, apiGameCatalogEntry_rulesLink?: Partial<Parsable | ApiGameCatalogEntry_rulesLinkMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_rulesLinkMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_rulesLinkMember1(writer: SerializationWriter, apiGameCatalogEntry_rulesLinkMember1?: Partial<ApiGameCatalogEntry_rulesLinkMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_shortNameKey The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_shortNameKey(writer: SerializationWriter, apiGameCatalogEntry_shortNameKey?: Partial<Parsable | ApiGameCatalogEntry_shortNameKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogEntry_shortNameKeyMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogEntry_shortNameKeyMember1(writer: SerializationWriter, apiGameCatalogEntry_shortNameKeyMember1?: Partial<ApiGameCatalogEntry_shortNameKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameCatalogResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameCatalogResponse(writer: SerializationWriter, apiGameCatalogResponse?: Partial<ApiGameCatalogResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMap The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMap(writer: SerializationWriter, apiGameMap?: Partial<ApiGameMap> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMap_coverImage The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMap_coverImage(writer: SerializationWriter, apiGameMap_coverImage?: Partial<Parsable | ApiGameMap_coverImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMap_coverImageMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMap_coverImageMember1(writer: SerializationWriter, apiGameMap_coverImageMember1?: Partial<ApiGameMap_coverImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMap_minimapImage The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMap_minimapImage(writer: SerializationWriter, apiGameMap_minimapImage?: Partial<Parsable | ApiGameMap_minimapImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMap_minimapImageMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMap_minimapImageMember1(writer: SerializationWriter, apiGameMap_minimapImageMember1?: Partial<ApiGameMap_minimapImageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode(writer: SerializationWriter, apiGameMode?: Partial<ApiGameMode> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_descriptionKey The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_descriptionKey(writer: SerializationWriter, apiGameMode_descriptionKey?: Partial<Parsable | ApiGameMode_descriptionKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_descriptionKeyMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_descriptionKeyMember1(writer: SerializationWriter, apiGameMode_descriptionKeyMember1?: Partial<ApiGameMode_descriptionKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_image The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_image(writer: SerializationWriter, apiGameMode_image?: Partial<Parsable | ApiGameMode_imageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_imageMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_imageMember1(writer: SerializationWriter, apiGameMode_imageMember1?: Partial<ApiGameMode_imageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_rewardBonus The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_rewardBonus(writer: SerializationWriter, apiGameMode_rewardBonus?: Partial<Parsable | ApiGameMode_rewardBonusMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_rewardBonusMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_rewardBonusMember1(writer: SerializationWriter, apiGameMode_rewardBonusMember1?: Partial<ApiGameMode_rewardBonusMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_shortName The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_shortName(writer: SerializationWriter, apiGameMode_shortName?: Partial<Parsable | ApiGameMode_shortNameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameMode_shortNameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameMode_shortNameMember1(writer: SerializationWriter, apiGameMode_shortNameMember1?: Partial<ApiGameMode_shortNameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameModeMapPool The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameModeMapPool(writer: SerializationWriter, apiGameModeMapPool?: Partial<ApiGameModeMapPool> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGamePlaylist The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGamePlaylist(writer: SerializationWriter, apiGamePlaylist?: Partial<ApiGamePlaylist> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGamePlaylist_descriptionKey The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGamePlaylist_descriptionKey(writer: SerializationWriter, apiGamePlaylist_descriptionKey?: Partial<Parsable | ApiGamePlaylist_descriptionKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGamePlaylist_descriptionKeyMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGamePlaylist_descriptionKeyMember1(writer: SerializationWriter, apiGamePlaylist_descriptionKeyMember1?: Partial<ApiGamePlaylist_descriptionKeyMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGamePlaylist_image The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGamePlaylist_image(writer: SerializationWriter, apiGamePlaylist_image?: Partial<Parsable | ApiGamePlaylist_imageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGamePlaylist_imageMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGamePlaylist_imageMember1(writer: SerializationWriter, apiGamePlaylist_imageMember1?: Partial<ApiGamePlaylist_imageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGamePlaylistsResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGamePlaylistsResponse(writer: SerializationWriter, apiGamePlaylistsResponse?: Partial<ApiGamePlaylistsResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameRank The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameRank(writer: SerializationWriter, apiGameRank?: Partial<ApiGameRank> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameRank_sr The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameRank_sr(writer: SerializationWriter, apiGameRank_sr?: Partial<Parsable | ApiGameRank_srMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameRank_srMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameRank_srMember1(writer: SerializationWriter, apiGameRank_srMember1?: Partial<ApiGameRank_srMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameRank_top250Rank The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameRank_top250Rank(writer: SerializationWriter, apiGameRank_top250Rank?: Partial<Parsable | ApiGameRank_top250RankMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiGameRank_top250RankMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiGameRank_top250RankMember1(writer: SerializationWriter, apiGameRank_top250RankMember1?: Partial<ApiGameRank_top250RankMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail(writer: SerializationWriter, apiMatchDetail?: Partial<ApiMatchDetail> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_completedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_completedAt(writer: SerializationWriter, apiMatchDetail_completedAt?: Partial<Parsable | ApiMatchDetail_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_completedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_completedAtMember1(writer: SerializationWriter, apiMatchDetail_completedAtMember1?: Partial<ApiMatchDetail_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_createdAt(writer: SerializationWriter, apiMatchDetail_createdAt?: Partial<Parsable | ApiMatchDetail_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_createdAtMember1(writer: SerializationWriter, apiMatchDetail_createdAtMember1?: Partial<ApiMatchDetail_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_leagueId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_leagueId(writer: SerializationWriter, apiMatchDetail_leagueId?: Partial<Parsable | ApiMatchDetail_leagueIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_leagueIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_leagueIdMember1(writer: SerializationWriter, apiMatchDetail_leagueIdMember1?: Partial<ApiMatchDetail_leagueIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_leagueSeasonId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_leagueSeasonId(writer: SerializationWriter, apiMatchDetail_leagueSeasonId?: Partial<Parsable | ApiMatchDetail_leagueSeasonIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_leagueSeasonIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_leagueSeasonIdMember1(writer: SerializationWriter, apiMatchDetail_leagueSeasonIdMember1?: Partial<ApiMatchDetail_leagueSeasonIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_matchType The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_matchType(writer: SerializationWriter, apiMatchDetail_matchType?: Partial<Parsable | ApiMatchDetail_matchTypeMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_matchTypeMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_matchTypeMember1(writer: SerializationWriter, apiMatchDetail_matchTypeMember1?: Partial<ApiMatchDetail_matchTypeMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_platform The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_platform(writer: SerializationWriter, apiMatchDetail_platform?: Partial<Parsable | ApiMatchDetail_platformMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_platformMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_platformMember1(writer: SerializationWriter, apiMatchDetail_platformMember1?: Partial<ApiMatchDetail_platformMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_region The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_region(writer: SerializationWriter, apiMatchDetail_region?: Partial<Parsable | ApiMatchDetail_regionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_regionMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_regionMember1(writer: SerializationWriter, apiMatchDetail_regionMember1?: Partial<ApiMatchDetail_regionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_scheduledAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_scheduledAt(writer: SerializationWriter, apiMatchDetail_scheduledAt?: Partial<Parsable | ApiMatchDetail_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_scheduledAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_scheduledAtMember1(writer: SerializationWriter, apiMatchDetail_scheduledAtMember1?: Partial<ApiMatchDetail_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_startedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_startedAt(writer: SerializationWriter, apiMatchDetail_startedAt?: Partial<Parsable | ApiMatchDetail_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_startedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_startedAtMember1(writer: SerializationWriter, apiMatchDetail_startedAtMember1?: Partial<ApiMatchDetail_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_winnerTeamId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_winnerTeamId(writer: SerializationWriter, apiMatchDetail_winnerTeamId?: Partial<Parsable | ApiMatchDetail_winnerTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetail_winnerTeamIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetail_winnerTeamIdMember1(writer: SerializationWriter, apiMatchDetail_winnerTeamIdMember1?: Partial<ApiMatchDetail_winnerTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchDetailResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchDetailResponse(writer: SerializationWriter, apiMatchDetailResponse?: Partial<ApiMatchDetailResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer(writer: SerializationWriter, apiMatchPlayer?: Partial<ApiMatchPlayer> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_avatarUrl(writer: SerializationWriter, apiMatchPlayer_avatarUrl?: Partial<Parsable | ApiMatchPlayer_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_avatarUrlMember1(writer: SerializationWriter, apiMatchPlayer_avatarUrlMember1?: Partial<ApiMatchPlayer_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_checkedInAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_checkedInAt(writer: SerializationWriter, apiMatchPlayer_checkedInAt?: Partial<Parsable | ApiMatchPlayer_checkedInAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_checkedInAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_checkedInAtMember1(writer: SerializationWriter, apiMatchPlayer_checkedInAtMember1?: Partial<ApiMatchPlayer_checkedInAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_name The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_name(writer: SerializationWriter, apiMatchPlayer_name?: Partial<Parsable | ApiMatchPlayer_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_nameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_nameMember1(writer: SerializationWriter, apiMatchPlayer_nameMember1?: Partial<ApiMatchPlayer_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_username The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_username(writer: SerializationWriter, apiMatchPlayer_username?: Partial<Parsable | ApiMatchPlayer_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayer_usernameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayer_usernameMember1(writer: SerializationWriter, apiMatchPlayer_usernameMember1?: Partial<ApiMatchPlayer_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchPlayersResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchPlayersResponse(writer: SerializationWriter, apiMatchPlayersResponse?: Partial<ApiMatchPlayersResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchTeam The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchTeam(writer: SerializationWriter, apiMatchTeam?: Partial<ApiMatchTeam> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchTeam_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchTeam_avatarUrl(writer: SerializationWriter, apiMatchTeam_avatarUrl?: Partial<Parsable | ApiMatchTeam_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchTeam_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchTeam_avatarUrlMember1(writer: SerializationWriter, apiMatchTeam_avatarUrlMember1?: Partial<ApiMatchTeam_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchTeam_score The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchTeam_score(writer: SerializationWriter, apiMatchTeam_score?: Partial<Parsable | ApiMatchTeam_scoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMatchTeam_scoreMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMatchTeam_scoreMember1(writer: SerializationWriter, apiMatchTeam_scoreMember1?: Partial<ApiMatchTeam_scoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMember The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMember(writer: SerializationWriter, apiMember?: Partial<ApiMember> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMember_joinedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMember_joinedAt(writer: SerializationWriter, apiMember_joinedAt?: Partial<Parsable | ApiMember_joinedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiMember_joinedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiMember_joinedAtMember1(writer: SerializationWriter, apiMember_joinedAtMember1?: Partial<ApiMember_joinedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiObjective The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiObjective(writer: SerializationWriter, apiObjective?: Partial<ApiObjective> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile(writer: SerializationWriter, apiOrganizationProfile?: Partial<ApiOrganizationProfile> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_avatarUrl(writer: SerializationWriter, apiOrganizationProfile_avatarUrl?: Partial<Parsable | ApiOrganizationProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_avatarUrlMember1(writer: SerializationWriter, apiOrganizationProfile_avatarUrlMember1?: Partial<ApiOrganizationProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_bannerUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_bannerUrl(writer: SerializationWriter, apiOrganizationProfile_bannerUrl?: Partial<Parsable | ApiOrganizationProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_bannerUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_bannerUrlMember1(writer: SerializationWriter, apiOrganizationProfile_bannerUrlMember1?: Partial<ApiOrganizationProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_createdAt(writer: SerializationWriter, apiOrganizationProfile_createdAt?: Partial<Parsable | ApiOrganizationProfile_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_createdAtMember1(writer: SerializationWriter, apiOrganizationProfile_createdAtMember1?: Partial<ApiOrganizationProfile_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_description The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_description(writer: SerializationWriter, apiOrganizationProfile_description?: Partial<Parsable | ApiOrganizationProfile_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_descriptionMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_descriptionMember1(writer: SerializationWriter, apiOrganizationProfile_descriptionMember1?: Partial<ApiOrganizationProfile_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_slug The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_slug(writer: SerializationWriter, apiOrganizationProfile_slug?: Partial<Parsable | ApiOrganizationProfile_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_slugMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_slugMember1(writer: SerializationWriter, apiOrganizationProfile_slugMember1?: Partial<ApiOrganizationProfile_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_tag The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_tag(writer: SerializationWriter, apiOrganizationProfile_tag?: Partial<Parsable | ApiOrganizationProfile_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationProfile_tagMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationProfile_tagMember1(writer: SerializationWriter, apiOrganizationProfile_tagMember1?: Partial<ApiOrganizationProfile_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationStats The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationStats(writer: SerializationWriter, apiOrganizationStats?: Partial<ApiOrganizationStats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationSummary The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationSummary(writer: SerializationWriter, apiOrganizationSummary?: Partial<ApiOrganizationSummary> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationSummary_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationSummary_avatarUrl(writer: SerializationWriter, apiOrganizationSummary_avatarUrl?: Partial<Parsable | ApiOrganizationSummary_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationSummary_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationSummary_avatarUrlMember1(writer: SerializationWriter, apiOrganizationSummary_avatarUrlMember1?: Partial<ApiOrganizationSummary_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationSummary_slug The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationSummary_slug(writer: SerializationWriter, apiOrganizationSummary_slug?: Partial<Parsable | ApiOrganizationSummary_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationSummary_slugMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationSummary_slugMember1(writer: SerializationWriter, apiOrganizationSummary_slugMember1?: Partial<ApiOrganizationSummary_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationSummary_tag The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationSummary_tag(writer: SerializationWriter, apiOrganizationSummary_tag?: Partial<Parsable | ApiOrganizationSummary_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOrganizationSummary_tagMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOrganizationSummary_tagMember1(writer: SerializationWriter, apiOrganizationSummary_tagMember1?: Partial<ApiOrganizationSummary_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection(writer: SerializationWriter, apiOwnConnection?: Partial<ApiOwnConnection> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_connectedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_connectedAt(writer: SerializationWriter, apiOwnConnection_connectedAt?: Partial<Parsable | ApiOwnConnection_connectedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_connectedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_connectedAtMember1(writer: SerializationWriter, apiOwnConnection_connectedAtMember1?: Partial<ApiOwnConnection_connectedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_gamingPlatform The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_gamingPlatform(writer: SerializationWriter, apiOwnConnection_gamingPlatform?: Partial<Parsable | ApiOwnConnection_gamingPlatformMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_gamingPlatformMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_gamingPlatformMember1(writer: SerializationWriter, apiOwnConnection_gamingPlatformMember1?: Partial<ApiOwnConnection_gamingPlatformMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_region The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_region(writer: SerializationWriter, apiOwnConnection_region?: Partial<Parsable | ApiOwnConnection_regionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_regionMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_regionMember1(writer: SerializationWriter, apiOwnConnection_regionMember1?: Partial<ApiOwnConnection_regionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_url The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_url(writer: SerializationWriter, apiOwnConnection_url?: Partial<Parsable | ApiOwnConnection_urlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_urlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_urlMember1(writer: SerializationWriter, apiOwnConnection_urlMember1?: Partial<ApiOwnConnection_urlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_username The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_username(writer: SerializationWriter, apiOwnConnection_username?: Partial<Parsable | ApiOwnConnection_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiOwnConnection_usernameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiOwnConnection_usernameMember1(writer: SerializationWriter, apiOwnConnection_usernameMember1?: Partial<ApiOwnConnection_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream(writer: SerializationWriter, apiPrimaryStream?: Partial<ApiPrimaryStream> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_gameName The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_gameName(writer: SerializationWriter, apiPrimaryStream_gameName?: Partial<Parsable | ApiPrimaryStream_gameNameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_gameNameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_gameNameMember1(writer: SerializationWriter, apiPrimaryStream_gameNameMember1?: Partial<ApiPrimaryStream_gameNameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_lastLiveAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_lastLiveAt(writer: SerializationWriter, apiPrimaryStream_lastLiveAt?: Partial<Parsable | ApiPrimaryStream_lastLiveAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_lastLiveAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_lastLiveAtMember1(writer: SerializationWriter, apiPrimaryStream_lastLiveAtMember1?: Partial<ApiPrimaryStream_lastLiveAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_startedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_startedAt(writer: SerializationWriter, apiPrimaryStream_startedAt?: Partial<Parsable | ApiPrimaryStream_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_startedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_startedAtMember1(writer: SerializationWriter, apiPrimaryStream_startedAtMember1?: Partial<ApiPrimaryStream_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_streamUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_streamUrl(writer: SerializationWriter, apiPrimaryStream_streamUrl?: Partial<Parsable | ApiPrimaryStream_streamUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_streamUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_streamUrlMember1(writer: SerializationWriter, apiPrimaryStream_streamUrlMember1?: Partial<ApiPrimaryStream_streamUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_thumbnailUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_thumbnailUrl(writer: SerializationWriter, apiPrimaryStream_thumbnailUrl?: Partial<Parsable | ApiPrimaryStream_thumbnailUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_thumbnailUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_thumbnailUrlMember1(writer: SerializationWriter, apiPrimaryStream_thumbnailUrlMember1?: Partial<ApiPrimaryStream_thumbnailUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_title The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_title(writer: SerializationWriter, apiPrimaryStream_title?: Partial<Parsable | ApiPrimaryStream_titleMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_titleMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_titleMember1(writer: SerializationWriter, apiPrimaryStream_titleMember1?: Partial<ApiPrimaryStream_titleMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_viewerCount The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_viewerCount(writer: SerializationWriter, apiPrimaryStream_viewerCount?: Partial<Parsable | ApiPrimaryStream_viewerCountMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiPrimaryStream_viewerCountMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiPrimaryStream_viewerCountMember1(writer: SerializationWriter, apiPrimaryStream_viewerCountMember1?: Partial<ApiPrimaryStream_viewerCountMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy(writer: SerializationWriter, apiStrategy?: Partial<ApiStrategy> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_createdAt(writer: SerializationWriter, apiStrategy_createdAt?: Partial<Parsable | ApiStrategy_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_createdAtMember1(writer: SerializationWriter, apiStrategy_createdAtMember1?: Partial<ApiStrategy_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_description The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_description(writer: SerializationWriter, apiStrategy_description?: Partial<Parsable | ApiStrategy_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_descriptionMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_descriptionMember1(writer: SerializationWriter, apiStrategy_descriptionMember1?: Partial<ApiStrategy_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_previewUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_previewUrl(writer: SerializationWriter, apiStrategy_previewUrl?: Partial<Parsable | ApiStrategy_previewUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_previewUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_previewUrlMember1(writer: SerializationWriter, apiStrategy_previewUrlMember1?: Partial<ApiStrategy_previewUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_updatedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_updatedAt(writer: SerializationWriter, apiStrategy_updatedAt?: Partial<Parsable | ApiStrategy_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategy_updatedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategy_updatedAtMember1(writer: SerializationWriter, apiStrategy_updatedAtMember1?: Partial<ApiStrategy_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyEnvelope The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyEnvelope(writer: SerializationWriter, apiStrategyEnvelope?: Partial<ApiStrategyEnvelope> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyShape The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyShape(writer: SerializationWriter, apiStrategyShape?: Partial<ApiStrategyShape> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyShape_updatedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyShape_updatedAt(writer: SerializationWriter, apiStrategyShape_updatedAt?: Partial<Parsable | ApiStrategyShape_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyShape_updatedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyShape_updatedAtMember1(writer: SerializationWriter, apiStrategyShape_updatedAtMember1?: Partial<ApiStrategyShape_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyShapesEnvelope The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyShapesEnvelope(writer: SerializationWriter, apiStrategyShapesEnvelope?: Partial<ApiStrategyShapesEnvelope> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyStage The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyStage(writer: SerializationWriter, apiStrategyStage?: Partial<ApiStrategyStage> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyStage_label The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyStage_label(writer: SerializationWriter, apiStrategyStage_label?: Partial<Parsable | ApiStrategyStage_labelMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStrategyStage_labelMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStrategyStage_labelMember1(writer: SerializationWriter, apiStrategyStage_labelMember1?: Partial<ApiStrategyStage_labelMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStreamStatus The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStreamStatus(writer: SerializationWriter, apiStreamStatus?: Partial<ApiStreamStatus> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiStreamStatusEnvelope The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiStreamStatusEnvelope(writer: SerializationWriter, apiStreamStatusEnvelope?: Partial<ApiStreamStatusEnvelope> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile(writer: SerializationWriter, apiTeamProfile?: Partial<ApiTeamProfile> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_avatarUrl(writer: SerializationWriter, apiTeamProfile_avatarUrl?: Partial<Parsable | ApiTeamProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_avatarUrlMember1(writer: SerializationWriter, apiTeamProfile_avatarUrlMember1?: Partial<ApiTeamProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_bannerUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_bannerUrl(writer: SerializationWriter, apiTeamProfile_bannerUrl?: Partial<Parsable | ApiTeamProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_bannerUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_bannerUrlMember1(writer: SerializationWriter, apiTeamProfile_bannerUrlMember1?: Partial<ApiTeamProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_createdAt(writer: SerializationWriter, apiTeamProfile_createdAt?: Partial<Parsable | ApiTeamProfile_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_createdAtMember1(writer: SerializationWriter, apiTeamProfile_createdAtMember1?: Partial<ApiTeamProfile_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_description The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_description(writer: SerializationWriter, apiTeamProfile_description?: Partial<Parsable | ApiTeamProfile_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_descriptionMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_descriptionMember1(writer: SerializationWriter, apiTeamProfile_descriptionMember1?: Partial<ApiTeamProfile_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_gameId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_gameId(writer: SerializationWriter, apiTeamProfile_gameId?: Partial<Parsable | ApiTeamProfile_gameIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_gameIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_gameIdMember1(writer: SerializationWriter, apiTeamProfile_gameIdMember1?: Partial<ApiTeamProfile_gameIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_organizationId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_organizationId(writer: SerializationWriter, apiTeamProfile_organizationId?: Partial<Parsable | ApiTeamProfile_organizationIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_organizationIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_organizationIdMember1(writer: SerializationWriter, apiTeamProfile_organizationIdMember1?: Partial<ApiTeamProfile_organizationIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_slug The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_slug(writer: SerializationWriter, apiTeamProfile_slug?: Partial<Parsable | ApiTeamProfile_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_slugMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_slugMember1(writer: SerializationWriter, apiTeamProfile_slugMember1?: Partial<ApiTeamProfile_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_tag The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_tag(writer: SerializationWriter, apiTeamProfile_tag?: Partial<Parsable | ApiTeamProfile_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamProfile_tagMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamProfile_tagMember1(writer: SerializationWriter, apiTeamProfile_tagMember1?: Partial<ApiTeamProfile_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamSummary The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamSummary(writer: SerializationWriter, apiTeamSummary?: Partial<ApiTeamSummary> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamSummary_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamSummary_avatarUrl(writer: SerializationWriter, apiTeamSummary_avatarUrl?: Partial<Parsable | ApiTeamSummary_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamSummary_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamSummary_avatarUrlMember1(writer: SerializationWriter, apiTeamSummary_avatarUrlMember1?: Partial<ApiTeamSummary_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamSummary_slug The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamSummary_slug(writer: SerializationWriter, apiTeamSummary_slug?: Partial<Parsable | ApiTeamSummary_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamSummary_slugMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamSummary_slugMember1(writer: SerializationWriter, apiTeamSummary_slugMember1?: Partial<ApiTeamSummary_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamSummary_tag The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamSummary_tag(writer: SerializationWriter, apiTeamSummary_tag?: Partial<Parsable | ApiTeamSummary_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiTeamSummary_tagMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiTeamSummary_tagMember1(writer: SerializationWriter, apiTeamSummary_tagMember1?: Partial<ApiTeamSummary_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserConnection The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserConnection(writer: SerializationWriter, apiUserConnection?: Partial<ApiUserConnection> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserConnection_connectedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserConnection_connectedAt(writer: SerializationWriter, apiUserConnection_connectedAt?: Partial<Parsable | ApiUserConnection_connectedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserConnection_connectedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserConnection_connectedAtMember1(writer: SerializationWriter, apiUserConnection_connectedAtMember1?: Partial<ApiUserConnection_connectedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserConnection_url The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserConnection_url(writer: SerializationWriter, apiUserConnection_url?: Partial<Parsable | ApiUserConnection_urlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserConnection_urlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserConnection_urlMember1(writer: SerializationWriter, apiUserConnection_urlMember1?: Partial<ApiUserConnection_urlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserConnection_username The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserConnection_username(writer: SerializationWriter, apiUserConnection_username?: Partial<Parsable | ApiUserConnection_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserConnection_usernameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserConnection_usernameMember1(writer: SerializationWriter, apiUserConnection_usernameMember1?: Partial<ApiUserConnection_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership(writer: SerializationWriter, apiUserOrganizationMembership?: Partial<ApiUserOrganizationMembership> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_avatarUrl(writer: SerializationWriter, apiUserOrganizationMembership_avatarUrl?: Partial<Parsable | ApiUserOrganizationMembership_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_avatarUrlMember1(writer: SerializationWriter, apiUserOrganizationMembership_avatarUrlMember1?: Partial<ApiUserOrganizationMembership_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_joinedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_joinedAt(writer: SerializationWriter, apiUserOrganizationMembership_joinedAt?: Partial<Parsable | ApiUserOrganizationMembership_joinedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_joinedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_joinedAtMember1(writer: SerializationWriter, apiUserOrganizationMembership_joinedAtMember1?: Partial<ApiUserOrganizationMembership_joinedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_slug The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_slug(writer: SerializationWriter, apiUserOrganizationMembership_slug?: Partial<Parsable | ApiUserOrganizationMembership_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_slugMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_slugMember1(writer: SerializationWriter, apiUserOrganizationMembership_slugMember1?: Partial<ApiUserOrganizationMembership_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_tag The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_tag(writer: SerializationWriter, apiUserOrganizationMembership_tag?: Partial<Parsable | ApiUserOrganizationMembership_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserOrganizationMembership_tagMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserOrganizationMembership_tagMember1(writer: SerializationWriter, apiUserOrganizationMembership_tagMember1?: Partial<ApiUserOrganizationMembership_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile(writer: SerializationWriter, apiUserProfile?: Partial<ApiUserProfile> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_avatarUrl(writer: SerializationWriter, apiUserProfile_avatarUrl?: Partial<Parsable | ApiUserProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_avatarUrlMember1(writer: SerializationWriter, apiUserProfile_avatarUrlMember1?: Partial<ApiUserProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_bannerUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_bannerUrl(writer: SerializationWriter, apiUserProfile_bannerUrl?: Partial<Parsable | ApiUserProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_bannerUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_bannerUrlMember1(writer: SerializationWriter, apiUserProfile_bannerUrlMember1?: Partial<ApiUserProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_bio The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_bio(writer: SerializationWriter, apiUserProfile_bio?: Partial<Parsable | ApiUserProfile_bioMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_bioMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_bioMember1(writer: SerializationWriter, apiUserProfile_bioMember1?: Partial<ApiUserProfile_bioMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_createdAt(writer: SerializationWriter, apiUserProfile_createdAt?: Partial<Parsable | ApiUserProfile_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_createdAtMember1(writer: SerializationWriter, apiUserProfile_createdAtMember1?: Partial<ApiUserProfile_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_name The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_name(writer: SerializationWriter, apiUserProfile_name?: Partial<Parsable | ApiUserProfile_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_nameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_nameMember1(writer: SerializationWriter, apiUserProfile_nameMember1?: Partial<ApiUserProfile_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_username The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_username(writer: SerializationWriter, apiUserProfile_username?: Partial<Parsable | ApiUserProfile_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserProfile_usernameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserProfile_usernameMember1(writer: SerializationWriter, apiUserProfile_usernameMember1?: Partial<ApiUserProfile_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserStats The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserStats(writer: SerializationWriter, apiUserStats?: Partial<ApiUserStats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership(writer: SerializationWriter, apiUserTeamMembership?: Partial<ApiUserTeamMembership> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_avatarUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_avatarUrl(writer: SerializationWriter, apiUserTeamMembership_avatarUrl?: Partial<Parsable | ApiUserTeamMembership_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_avatarUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_avatarUrlMember1(writer: SerializationWriter, apiUserTeamMembership_avatarUrlMember1?: Partial<ApiUserTeamMembership_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_joinedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_joinedAt(writer: SerializationWriter, apiUserTeamMembership_joinedAt?: Partial<Parsable | ApiUserTeamMembership_joinedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_joinedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_joinedAtMember1(writer: SerializationWriter, apiUserTeamMembership_joinedAtMember1?: Partial<ApiUserTeamMembership_joinedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_slug The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_slug(writer: SerializationWriter, apiUserTeamMembership_slug?: Partial<Parsable | ApiUserTeamMembership_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_slugMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_slugMember1(writer: SerializationWriter, apiUserTeamMembership_slugMember1?: Partial<ApiUserTeamMembership_slugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_tag The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_tag(writer: SerializationWriter, apiUserTeamMembership_tag?: Partial<Parsable | ApiUserTeamMembership_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTeamMembership_tagMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTeamMembership_tagMember1(writer: SerializationWriter, apiUserTeamMembership_tagMember1?: Partial<ApiUserTeamMembership_tagMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy(writer: SerializationWriter, apiUserTrophy?: Partial<ApiUserTrophy> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_awardedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_awardedAt(writer: SerializationWriter, apiUserTrophy_awardedAt?: Partial<Parsable | ApiUserTrophy_awardedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_awardedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_awardedAtMember1(writer: SerializationWriter, apiUserTrophy_awardedAtMember1?: Partial<ApiUserTrophy_awardedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_description The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_description(writer: SerializationWriter, apiUserTrophy_description?: Partial<Parsable | ApiUserTrophy_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_descriptionMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_descriptionMember1(writer: SerializationWriter, apiUserTrophy_descriptionMember1?: Partial<ApiUserTrophy_descriptionMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_iconUrl The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_iconUrl(writer: SerializationWriter, apiUserTrophy_iconUrl?: Partial<Parsable | ApiUserTrophy_iconUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_iconUrlMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_iconUrlMember1(writer: SerializationWriter, apiUserTrophy_iconUrlMember1?: Partial<ApiUserTrophy_iconUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_rarity The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_rarity(writer: SerializationWriter, apiUserTrophy_rarity?: Partial<Parsable | ApiUserTrophy_rarityMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_rarityMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_rarityMember1(writer: SerializationWriter, apiUserTrophy_rarityMember1?: Partial<ApiUserTrophy_rarityMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_title The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_title(writer: SerializationWriter, apiUserTrophy_title?: Partial<Parsable | ApiUserTrophy_titleMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApiUserTrophy_titleMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApiUserTrophy_titleMember1(writer: SerializationWriter, apiUserTrophy_titleMember1?: Partial<ApiUserTrophy_titleMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApplyRuleTemplateRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApplyRuleTemplateRequestBody(writer: SerializationWriter, applyRuleTemplateRequestBody?: Partial<ApplyRuleTemplateRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApplyRuleTemplateResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApplyRuleTemplateResponse(writer: SerializationWriter, applyRuleTemplateResponse?: Partial<ApplyRuleTemplateResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ApproveLeagueTeamResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeApproveLeagueTeamResponse(writer: SerializationWriter, approveLeagueTeamResponse?: Partial<ApproveLeagueTeamResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param BansRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeBansRequestBody(writer: SerializationWriter, bansRequestBody?: Partial<BansRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CancelMatchRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCancelMatchRequestBody(writer: SerializationWriter, cancelMatchRequestBody?: Partial<CancelMatchRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CancelMatchResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCancelMatchResponse(writer: SerializationWriter, cancelMatchResponse?: Partial<CancelMatchResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatMessage The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatMessage(writer: SerializationWriter, chatMessage?: Partial<ChatMessage> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatMessage_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatMessage_createdAt(writer: SerializationWriter, chatMessage_createdAt?: Partial<Parsable | ChatMessage_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatMessage_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatMessage_createdAtMember1(writer: SerializationWriter, chatMessage_createdAtMember1?: Partial<ChatMessage_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatMessage_replyToId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatMessage_replyToId(writer: SerializationWriter, chatMessage_replyToId?: Partial<Parsable | ChatMessage_replyToIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatMessage_replyToIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatMessage_replyToIdMember1(writer: SerializationWriter, chatMessage_replyToIdMember1?: Partial<ChatMessage_replyToIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatMessage_senderUsername The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatMessage_senderUsername(writer: SerializationWriter, chatMessage_senderUsername?: Partial<Parsable | ChatMessage_senderUsernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatMessage_senderUsernameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatMessage_senderUsernameMember1(writer: SerializationWriter, chatMessage_senderUsernameMember1?: Partial<ChatMessage_senderUsernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ClearCooldownResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeClearCooldownResponse(writer: SerializationWriter, clearCooldownResponse?: Partial<ClearCooldownResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CompleteLeagueSeasonResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCompleteLeagueSeasonResponse(writer: SerializationWriter, completeLeagueSeasonResponse?: Partial<CompleteLeagueSeasonResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ConfirmScoreBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeConfirmScoreBody(writer: SerializationWriter, confirmScoreBody?: Partial<ConfirmScoreBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateBanRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateBanRequestBody(writer: SerializationWriter, createBanRequestBody?: Partial<CreateBanRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateBanResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateBanResponse(writer: SerializationWriter, createBanResponse?: Partial<CreateBanResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateLeagueTicketRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateLeagueTicketRequestBody(writer: SerializationWriter, createLeagueTicketRequestBody?: Partial<CreateLeagueTicketRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateLeagueTicketResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateLeagueTicketResponse(writer: SerializationWriter, createLeagueTicketResponse?: Partial<CreateLeagueTicketResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateMatchRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateMatchRequestBody(writer: SerializationWriter, createMatchRequestBody?: Partial<CreateMatchRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateMatchRequestBody_benchRoster The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateMatchRequestBody_benchRoster(writer: SerializationWriter, createMatchRequestBody_benchRoster?: Partial<CreateMatchRequestBody_benchRoster> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateMatchRequestBody_gameSpecificOptions The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateMatchRequestBody_gameSpecificOptions(writer: SerializationWriter, createMatchRequestBody_gameSpecificOptions?: Partial<CreateMatchRequestBody_gameSpecificOptions> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateMatchRequestBody_lockedRules The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateMatchRequestBody_lockedRules(writer: SerializationWriter, createMatchRequestBody_lockedRules?: Partial<CreateMatchRequestBody_lockedRules> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateMatchResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateMatchResponse(writer: SerializationWriter, createMatchResponse?: Partial<CreateMatchResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreatePenaltyRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreatePenaltyRequestBody(writer: SerializationWriter, createPenaltyRequestBody?: Partial<CreatePenaltyRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreatePenaltyResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreatePenaltyResponse(writer: SerializationWriter, createPenaltyResponse?: Partial<CreatePenaltyResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateSeasonRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateSeasonRequestBody(writer: SerializationWriter, createSeasonRequestBody?: Partial<CreateSeasonRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateSeasonResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateSeasonResponse(writer: SerializationWriter, createSeasonResponse?: Partial<CreateSeasonResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateTicketRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateTicketRequestBody(writer: SerializationWriter, createTicketRequestBody?: Partial<CreateTicketRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateTicketResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateTicketResponse(writer: SerializationWriter, createTicketResponse?: Partial<CreateTicketResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param CreateWebhookBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeCreateWebhookBody(writer: SerializationWriter, createWebhookBody?: Partial<CreateWebhookBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param DeleteLeagueSeasonResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeDeleteLeagueSeasonResponse(writer: SerializationWriter, deleteLeagueSeasonResponse?: Partial<DeleteLeagueSeasonResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param DenyLeagueTeamRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeDenyLeagueTeamRequestBody(writer: SerializationWriter, denyLeagueTeamRequestBody?: Partial<DenyLeagueTeamRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param DenyLeagueTeamResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeDenyLeagueTeamResponse(writer: SerializationWriter, denyLeagueTeamResponse?: Partial<DenyLeagueTeamResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param DiscoverLeaguesRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeDiscoverLeaguesRequestBody(writer: SerializationWriter, discoverLeaguesRequestBody?: Partial<DiscoverLeaguesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ErrorEscaped The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeErrorEscaped(writer: SerializationWriter, errorEscaped?: Partial<ErrorEscaped> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param EscalateLeagueTicketRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeEscalateLeagueTicketRequestBody(writer: SerializationWriter, escalateLeagueTicketRequestBody?: Partial<EscalateLeagueTicketRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param EscalateLeagueTicketResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeEscalateLeagueTicketResponse(writer: SerializationWriter, escalateLeagueTicketResponse?: Partial<EscalateLeagueTicketResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ForfeitMatchRequestBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeForfeitMatchRequestBody(writer: SerializationWriter, forfeitMatchRequestBody?: Partial<ForfeitMatchRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ForfeitMatchResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeForfeitMatchResponse(writer: SerializationWriter, forfeitMatchResponse?: Partial<ForfeitMatchResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param Game The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGame(writer: SerializationWriter, game?: Partial<Game> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameBatchMatchScoreResult The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameBatchMatchScoreResult(writer: SerializationWriter, gameBatchMatchScoreResult?: Partial<GameBatchMatchScoreResult> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameBatchMatchScoresBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameBatchMatchScoresBody(writer: SerializationWriter, gameBatchMatchScoresBody?: Partial<GameBatchMatchScoresBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameBatchMatchScoresResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameBatchMatchScoresResponse(writer: SerializationWriter, gameBatchMatchScoresResponse?: Partial<GameBatchMatchScoresResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameBatchScoreResult The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameBatchScoreResult(writer: SerializationWriter, gameBatchScoreResult?: Partial<GameBatchScoreResult> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameBatchScoresBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameBatchScoresBody(writer: SerializationWriter, gameBatchScoresBody?: Partial<GameBatchScoresBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameBatchScoresResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameBatchScoresResponse(writer: SerializationWriter, gameBatchScoresResponse?: Partial<GameBatchScoresResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameCreateMatchBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameCreateMatchBody(writer: SerializationWriter, gameCreateMatchBody?: Partial<GameCreateMatchBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameCreateMatchResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameCreateMatchResponse(writer: SerializationWriter, gameCreateMatchResponse?: Partial<GameCreateMatchResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameDetailTeam The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameDetailTeam(writer: SerializationWriter, gameDetailTeam?: Partial<GameDetailTeam> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameForfeitBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameForfeitBody(writer: SerializationWriter, gameForfeitBody?: Partial<GameForfeitBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameForfeitResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameForfeitResponse(writer: SerializationWriter, gameForfeitResponse?: Partial<GameForfeitResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMapScoreInput The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMapScoreInput(writer: SerializationWriter, gameMapScoreInput?: Partial<GameMapScoreInput> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMapScoreInput_playerStats The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMapScoreInput_playerStats(writer: SerializationWriter, gameMapScoreInput_playerStats?: Partial<GameMapScoreInput_playerStats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch(writer: SerializationWriter, gameMatch?: Partial<GameMatch> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_acceptedTeamScore The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_acceptedTeamScore(writer: SerializationWriter, gameMatch_acceptedTeamScore?: Partial<Parsable | GameMatch_acceptedTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_acceptedTeamScoreMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_acceptedTeamScoreMember1(writer: SerializationWriter, gameMatch_acceptedTeamScoreMember1?: Partial<GameMatch_acceptedTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_completedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_completedAt(writer: SerializationWriter, gameMatch_completedAt?: Partial<Parsable | GameMatch_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_completedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_completedAtMember1(writer: SerializationWriter, gameMatch_completedAtMember1?: Partial<GameMatch_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_createdAt(writer: SerializationWriter, gameMatch_createdAt?: Partial<Parsable | GameMatch_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_createdAtMember1(writer: SerializationWriter, gameMatch_createdAtMember1?: Partial<GameMatch_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_creatorTeamScore The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_creatorTeamScore(writer: SerializationWriter, gameMatch_creatorTeamScore?: Partial<Parsable | GameMatch_creatorTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_creatorTeamScoreMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_creatorTeamScoreMember1(writer: SerializationWriter, gameMatch_creatorTeamScoreMember1?: Partial<GameMatch_creatorTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_scheduledAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_scheduledAt(writer: SerializationWriter, gameMatch_scheduledAt?: Partial<Parsable | GameMatch_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_scheduledAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_scheduledAtMember1(writer: SerializationWriter, gameMatch_scheduledAtMember1?: Partial<GameMatch_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_startedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_startedAt(writer: SerializationWriter, gameMatch_startedAt?: Partial<Parsable | GameMatch_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatch_startedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatch_startedAtMember1(writer: SerializationWriter, gameMatch_startedAtMember1?: Partial<GameMatch_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail(writer: SerializationWriter, gameMatchDetail?: Partial<GameMatchDetail> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_acceptedTeamScore The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_acceptedTeamScore(writer: SerializationWriter, gameMatchDetail_acceptedTeamScore?: Partial<Parsable | GameMatchDetail_acceptedTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_acceptedTeamScoreMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_acceptedTeamScoreMember1(writer: SerializationWriter, gameMatchDetail_acceptedTeamScoreMember1?: Partial<GameMatchDetail_acceptedTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_completedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_completedAt(writer: SerializationWriter, gameMatchDetail_completedAt?: Partial<Parsable | GameMatchDetail_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_completedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_completedAtMember1(writer: SerializationWriter, gameMatchDetail_completedAtMember1?: Partial<GameMatchDetail_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_createdAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_createdAt(writer: SerializationWriter, gameMatchDetail_createdAt?: Partial<Parsable | GameMatchDetail_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_createdAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_createdAtMember1(writer: SerializationWriter, gameMatchDetail_createdAtMember1?: Partial<GameMatchDetail_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_creatorTeamScore The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_creatorTeamScore(writer: SerializationWriter, gameMatchDetail_creatorTeamScore?: Partial<Parsable | GameMatchDetail_creatorTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_creatorTeamScoreMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_creatorTeamScoreMember1(writer: SerializationWriter, gameMatchDetail_creatorTeamScoreMember1?: Partial<GameMatchDetail_creatorTeamScoreMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_leagueId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_leagueId(writer: SerializationWriter, gameMatchDetail_leagueId?: Partial<Parsable | GameMatchDetail_leagueIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_leagueIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_leagueIdMember1(writer: SerializationWriter, gameMatchDetail_leagueIdMember1?: Partial<GameMatchDetail_leagueIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_leagueSeasonId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_leagueSeasonId(writer: SerializationWriter, gameMatchDetail_leagueSeasonId?: Partial<Parsable | GameMatchDetail_leagueSeasonIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_leagueSeasonIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_leagueSeasonIdMember1(writer: SerializationWriter, gameMatchDetail_leagueSeasonIdMember1?: Partial<GameMatchDetail_leagueSeasonIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_loserTeamId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_loserTeamId(writer: SerializationWriter, gameMatchDetail_loserTeamId?: Partial<Parsable | GameMatchDetail_loserTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_loserTeamIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_loserTeamIdMember1(writer: SerializationWriter, gameMatchDetail_loserTeamIdMember1?: Partial<GameMatchDetail_loserTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_scheduledAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_scheduledAt(writer: SerializationWriter, gameMatchDetail_scheduledAt?: Partial<Parsable | GameMatchDetail_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_scheduledAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_scheduledAtMember1(writer: SerializationWriter, gameMatchDetail_scheduledAtMember1?: Partial<GameMatchDetail_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_startedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_startedAt(writer: SerializationWriter, gameMatchDetail_startedAt?: Partial<Parsable | GameMatchDetail_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_startedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_startedAtMember1(writer: SerializationWriter, gameMatchDetail_startedAtMember1?: Partial<GameMatchDetail_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_winnerTeamId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_winnerTeamId(writer: SerializationWriter, gameMatchDetail_winnerTeamId?: Partial<Parsable | GameMatchDetail_winnerTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetail_winnerTeamIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetail_winnerTeamIdMember1(writer: SerializationWriter, gameMatchDetail_winnerTeamIdMember1?: Partial<GameMatchDetail_winnerTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchDetailResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchDetailResponse(writer: SerializationWriter, gameMatchDetailResponse?: Partial<GameMatchDetailResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchRostersResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchRostersResponse(writer: SerializationWriter, gameMatchRostersResponse?: Partial<GameMatchRostersResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchRostersResponse_acceptedTeamId The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchRostersResponse_acceptedTeamId(writer: SerializationWriter, gameMatchRostersResponse_acceptedTeamId?: Partial<Parsable | GameMatchRostersResponse_acceptedTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMatchRostersResponse_acceptedTeamIdMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMatchRostersResponse_acceptedTeamIdMember1(writer: SerializationWriter, gameMatchRostersResponse_acceptedTeamIdMember1?: Partial<GameMatchRostersResponse_acceptedTeamIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMultiMatchScoreItem The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMultiMatchScoreItem(writer: SerializationWriter, gameMultiMatchScoreItem?: Partial<GameMultiMatchScoreItem> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameMultiMatchScoreItem_playerStats The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameMultiMatchScoreItem_playerStats(writer: SerializationWriter, gameMultiMatchScoreItem_playerStats?: Partial<GameMultiMatchScoreItem_playerStats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GamePlayerStatsBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGamePlayerStatsBody(writer: SerializationWriter, gamePlayerStatsBody?: Partial<GamePlayerStatsBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GamePlayerStatsBody_playerStats The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGamePlayerStatsBody_playerStats(writer: SerializationWriter, gamePlayerStatsBody_playerStats?: Partial<GamePlayerStatsBody_playerStats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GamePlayerStatsResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGamePlayerStatsResponse(writer: SerializationWriter, gamePlayerStatsResponse?: Partial<GamePlayerStatsResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRankDeleteResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRankDeleteResponse(writer: SerializationWriter, gameRankDeleteResponse?: Partial<GameRankDeleteResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRankListResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRankListResponse(writer: SerializationWriter, gameRankListResponse?: Partial<GameRankListResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRankUpsertBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRankUpsertBody(writer: SerializationWriter, gameRankUpsertBody?: Partial<GameRankUpsertBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRankUpsertResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRankUpsertResponse(writer: SerializationWriter, gameRankUpsertResponse?: Partial<GameRankUpsertResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRosterPlayer The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRosterPlayer(writer: SerializationWriter, gameRosterPlayer?: Partial<GameRosterPlayer> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRosterPlayer_name The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRosterPlayer_name(writer: SerializationWriter, gameRosterPlayer_name?: Partial<Parsable | GameRosterPlayer_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRosterPlayer_nameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRosterPlayer_nameMember1(writer: SerializationWriter, gameRosterPlayer_nameMember1?: Partial<GameRosterPlayer_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRosterPlayer_username The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRosterPlayer_username(writer: SerializationWriter, gameRosterPlayer_username?: Partial<Parsable | GameRosterPlayer_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameRosterPlayer_usernameMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameRosterPlayer_usernameMember1(writer: SerializationWriter, gameRosterPlayer_usernameMember1?: Partial<GameRosterPlayer_usernameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameScore The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameScore(writer: SerializationWriter, gameScore?: Partial<GameScore> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameScore_confirmedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameScore_confirmedAt(writer: SerializationWriter, gameScore_confirmedAt?: Partial<Parsable | GameScore_confirmedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameScore_confirmedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameScore_confirmedAtMember1(writer: SerializationWriter, gameScore_confirmedAtMember1?: Partial<GameScore_confirmedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameScore_submittedAt The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameScore_submittedAt(writer: SerializationWriter, gameScore_submittedAt?: Partial<Parsable | GameScore_submittedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameScore_submittedAtMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameScore_submittedAtMember1(writer: SerializationWriter, gameScore_submittedAtMember1?: Partial<GameScore_submittedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameScoresResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameScoresResponse(writer: SerializationWriter, gameScoresResponse?: Partial<GameScoresResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameSeriesScore The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameSeriesScore(writer: SerializationWriter, gameSeriesScore?: Partial<GameSeriesScore> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameSingleMapScoreBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameSingleMapScoreBody(writer: SerializationWriter, gameSingleMapScoreBody?: Partial<GameSingleMapScoreBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameSingleMapScoreBody_playerStats The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameSingleMapScoreBody_playerStats(writer: SerializationWriter, gameSingleMapScoreBody_playerStats?: Partial<GameSingleMapScoreBody_playerStats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameSingleMapScoreResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameSingleMapScoreResponse(writer: SerializationWriter, gameSingleMapScoreResponse?: Partial<GameSingleMapScoreResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameStatusUpdateBody The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameStatusUpdateBody(writer: SerializationWriter, gameStatusUpdateBody?: Partial<GameStatusUpdateBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param GameStatusUpdateResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeGameStatusUpdateResponse(writer: SerializationWriter, gameStatusUpdateResponse?: Partial<GameStatusUpdateResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ImageUploadUrlResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeImageUploadUrlResponse(writer: SerializationWriter, imageUploadUrlResponse?: Partial<ImageUploadUrlResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param IssueCooldownRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeIssueCooldownRequestBody(writer: SerializationWriter, issueCooldownRequestBody?: Partial<IssueCooldownRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param IssueCooldownResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeIssueCooldownResponse(writer: SerializationWriter, issueCooldownResponse?: Partial<IssueCooldownResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaderboardRankResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaderboardRankResponse(writer: SerializationWriter, leaderboardRankResponse?: Partial<LeaderboardRankResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaderboardRankResponse_gameSlug The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaderboardRankResponse_gameSlug(writer: SerializationWriter, leaderboardRankResponse_gameSlug?: Partial<Parsable | LeaderboardRankResponse_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaderboardRankResponse_gameSlugMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaderboardRankResponse_gameSlugMember1(writer: SerializationWriter, leaderboardRankResponse_gameSlugMember1?: Partial<LeaderboardRankResponse_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaderboardRankResponse_rank The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaderboardRankResponse_rank(writer: SerializationWriter, leaderboardRankResponse_rank?: Partial<Parsable | LeaderboardRankResponse_rankMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaderboardRankResponse_rankMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaderboardRankResponse_rankMember1(writer: SerializationWriter, leaderboardRankResponse_rankMember1?: Partial<LeaderboardRankResponse_rankMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaderboardStats The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaderboardStats(writer: SerializationWriter, leaderboardStats?: Partial<LeaderboardStats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueActivityFeedRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueActivityFeedRequestBody(writer: SerializationWriter, leagueActivityFeedRequestBody?: Partial<LeagueActivityFeedRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueActivityFeedRequestBody_cursor The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueActivityFeedRequestBody_cursor(writer: SerializationWriter, leagueActivityFeedRequestBody_cursor?: Partial<Parsable | LeagueActivityFeedRequestBody_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueActivityFeedRequestBody_cursorMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueActivityFeedRequestBody_cursorMember1(writer: SerializationWriter, leagueActivityFeedRequestBody_cursorMember1?: Partial<LeagueActivityFeedRequestBody_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueActivityFeedResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueActivityFeedResponse(writer: SerializationWriter, leagueActivityFeedResponse?: Partial<LeagueActivityFeedResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueApplyEligibility The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueApplyEligibility(writer: SerializationWriter, leagueApplyEligibility?: Partial<LeagueApplyEligibility> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueApplyEligibility_eligibility The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueApplyEligibility_eligibility(writer: SerializationWriter, leagueApplyEligibility_eligibility?: Partial<LeagueApplyEligibility_eligibility> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueApplyEligibility_eligibility_eligibleTeams The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueApplyEligibility_eligibility_eligibleTeams(writer: SerializationWriter, leagueApplyEligibility_eligibility_eligibleTeams?: Partial<LeagueApplyEligibility_eligibility_eligibleTeams> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueApplyEligibility_eligibility_pendingTeams The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueApplyEligibility_eligibility_pendingTeams(writer: SerializationWriter, leagueApplyEligibility_eligibility_pendingTeams?: Partial<LeagueApplyEligibility_eligibility_pendingTeams> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueApplyEligibilityRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueApplyEligibilityRequestBody(writer: SerializationWriter, leagueApplyEligibilityRequestBody?: Partial<LeagueApplyEligibilityRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueBans The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueBans(writer: SerializationWriter, leagueBans?: Partial<LeagueBans> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueBans_bans The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueBans_bans(writer: SerializationWriter, leagueBans_bans?: Partial<LeagueBans_bans> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueBrandingSocials The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueBrandingSocials(writer: SerializationWriter, leagueBrandingSocials?: Partial<LeagueBrandingSocials> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueDashboardStatsResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueDashboardStatsResponse(writer: SerializationWriter, leagueDashboardStatsResponse?: Partial<LeagueDashboardStatsResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueDashboardStatsResponse_stats The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueDashboardStatsResponse_stats(writer: SerializationWriter, leagueDashboardStatsResponse_stats?: Partial<LeagueDashboardStatsResponse_stats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueDisplayRules The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueDisplayRules(writer: SerializationWriter, leagueDisplayRules?: Partial<LeagueDisplayRules> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueDisplayRules_displayRules The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueDisplayRules_displayRules(writer: SerializationWriter, leagueDisplayRules_displayRules?: Partial<LeagueDisplayRules_displayRules> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueDisplayRulesRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueDisplayRulesRequestBody(writer: SerializationWriter, leagueDisplayRulesRequestBody?: Partial<LeagueDisplayRulesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueGames The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueGames(writer: SerializationWriter, leagueGames?: Partial<LeagueGames> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueGames_games The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueGames_games(writer: SerializationWriter, leagueGames_games?: Partial<LeagueGames_games> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueGameWriteResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueGameWriteResponse(writer: SerializationWriter, leagueGameWriteResponse?: Partial<LeagueGameWriteResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueMembers The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueMembers(writer: SerializationWriter, leagueMembers?: Partial<LeagueMembers> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueMembers_members The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueMembers_members(writer: SerializationWriter, leagueMembers_members?: Partial<LeagueMembers_members> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaguePenalties The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaguePenalties(writer: SerializationWriter, leaguePenalties?: Partial<LeaguePenalties> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaguePenalties_cooldowns The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaguePenalties_cooldowns(writer: SerializationWriter, leaguePenalties_cooldowns?: Partial<LeaguePenalties_cooldowns> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaguePenalties_penalties The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaguePenalties_penalties(writer: SerializationWriter, leaguePenalties_penalties?: Partial<LeaguePenalties_penalties> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfile The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfile(writer: SerializationWriter, leagueProfile?: Partial<LeagueProfile> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfile_activeSeasons The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfile_activeSeasons(writer: SerializationWriter, leagueProfile_activeSeasons?: Partial<LeagueProfile_activeSeasons> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfile_avatarUrl The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfile_avatarUrl(writer: SerializationWriter, leagueProfile_avatarUrl?: Partial<Parsable | LeagueProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfile_avatarUrlMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfile_avatarUrlMember1(writer: SerializationWriter, leagueProfile_avatarUrlMember1?: Partial<LeagueProfile_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfile_bannerUrl The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfile_bannerUrl(writer: SerializationWriter, leagueProfile_bannerUrl?: Partial<Parsable | LeagueProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfile_bannerUrlMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfile_bannerUrlMember1(writer: SerializationWriter, leagueProfile_bannerUrlMember1?: Partial<LeagueProfile_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfile_games The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfile_games(writer: SerializationWriter, leagueProfile_games?: Partial<LeagueProfile_games> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueProfileResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueProfileResponse(writer: SerializationWriter, leagueProfileResponse?: Partial<LeagueProfileResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueRules The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueRules(writer: SerializationWriter, leagueRules?: Partial<LeagueRules> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeason The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeason(writer: SerializationWriter, leagueSeason?: Partial<LeagueSeason> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeason_season The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeason_season(writer: SerializationWriter, leagueSeason_season?: Partial<LeagueSeason_season> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeasonOptions The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeasonOptions(writer: SerializationWriter, leagueSeasonOptions?: Partial<LeagueSeasonOptions> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeasonOptions_defaultSeasonId The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeasonOptions_defaultSeasonId(writer: SerializationWriter, leagueSeasonOptions_defaultSeasonId?: Partial<Parsable | LeagueSeasonOptions_defaultSeasonIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeasonOptions_defaultSeasonIdMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeasonOptions_defaultSeasonIdMember1(writer: SerializationWriter, leagueSeasonOptions_defaultSeasonIdMember1?: Partial<LeagueSeasonOptions_defaultSeasonIdMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeasonOptions_seasons The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeasonOptions_seasons(writer: SerializationWriter, leagueSeasonOptions_seasons?: Partial<LeagueSeasonOptions_seasons> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeasonOptionsRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeasonOptionsRequestBody(writer: SerializationWriter, leagueSeasonOptionsRequestBody?: Partial<LeagueSeasonOptionsRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeasons The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeasons(writer: SerializationWriter, leagueSeasons?: Partial<LeagueSeasons> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSeasons_seasons The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSeasons_seasons(writer: SerializationWriter, leagueSeasons_seasons?: Partial<LeagueSeasons_seasons> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSettingsResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSettingsResponse(writer: SerializationWriter, leagueSettingsResponse?: Partial<LeagueSettingsResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSettingsResponse_league The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSettingsResponse_league(writer: SerializationWriter, leagueSettingsResponse_league?: Partial<LeagueSettingsResponse_league> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueStandings The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueStandings(writer: SerializationWriter, leagueStandings?: Partial<LeagueStandings> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueStandings_standings The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueStandings_standings(writer: SerializationWriter, leagueStandings_standings?: Partial<LeagueStandings_standings> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueStatusUpdateBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueStatusUpdateBody(writer: SerializationWriter, leagueStatusUpdateBody?: Partial<LeagueStatusUpdateBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSummary The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSummary(writer: SerializationWriter, leagueSummary?: Partial<LeagueSummary> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSummary_avatarUrl The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSummary_avatarUrl(writer: SerializationWriter, leagueSummary_avatarUrl?: Partial<Parsable | LeagueSummary_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSummary_avatarUrlMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSummary_avatarUrlMember1(writer: SerializationWriter, leagueSummary_avatarUrlMember1?: Partial<LeagueSummary_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSummary_bannerUrl The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSummary_bannerUrl(writer: SerializationWriter, leagueSummary_bannerUrl?: Partial<Parsable | LeagueSummary_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSummary_bannerUrlMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSummary_bannerUrlMember1(writer: SerializationWriter, leagueSummary_bannerUrlMember1?: Partial<LeagueSummary_bannerUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueSummary_games The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueSummary_games(writer: SerializationWriter, leagueSummary_games?: Partial<LeagueSummary_games> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueTemplates The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueTemplates(writer: SerializationWriter, leagueTemplates?: Partial<LeagueTemplates> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueTemplates_templates The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueTemplates_templates(writer: SerializationWriter, leagueTemplates_templates?: Partial<LeagueTemplates_templates> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeagueTemplatesRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeagueTemplatesRequestBody(writer: SerializationWriter, leagueTemplatesRequestBody?: Partial<LeagueTemplatesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ListGameMatchesBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeListGameMatchesBody(writer: SerializationWriter, listGameMatchesBody?: Partial<ListGameMatchesBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MapScoreItem The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMapScoreItem(writer: SerializationWriter, mapScoreItem?: Partial<MapScoreItem> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MapScoreItem_createdAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMapScoreItem_createdAt(writer: SerializationWriter, mapScoreItem_createdAt?: Partial<Parsable | MapScoreItem_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MapScoreItem_createdAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMapScoreItem_createdAtMember1(writer: SerializationWriter, mapScoreItem_createdAtMember1?: Partial<MapScoreItem_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MapScores The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMapScores(writer: SerializationWriter, mapScores?: Partial<MapScores> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MapScores_seriesScore The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMapScores_seriesScore(writer: SerializationWriter, mapScores_seriesScore?: Partial<MapScores_seriesScore> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MarkMatchReadyRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMarkMatchReadyRequestBody(writer: SerializationWriter, markMatchReadyRequestBody?: Partial<MarkMatchReadyRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MarkMatchReadyResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMarkMatchReadyResponse(writer: SerializationWriter, markMatchReadyResponse?: Partial<MarkMatchReadyResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchDiscoverBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchDiscoverBody(writer: SerializationWriter, matchDiscoverBody?: Partial<MatchDiscoverBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchDiscoverBody_cursor The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchDiscoverBody_cursor(writer: SerializationWriter, matchDiscoverBody_cursor?: Partial<Parsable | MatchDiscoverBody_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchDiscoverBody_cursorMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchDiscoverBody_cursorMember1(writer: SerializationWriter, matchDiscoverBody_cursorMember1?: Partial<MatchDiscoverBody_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchDiscoverPage The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchDiscoverPage(writer: SerializationWriter, matchDiscoverPage?: Partial<MatchDiscoverPage> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchDiscoverPage_nextCursor The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchDiscoverPage_nextCursor(writer: SerializationWriter, matchDiscoverPage_nextCursor?: Partial<Parsable | MatchDiscoverPage_nextCursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchDiscoverPage_nextCursorMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchDiscoverPage_nextCursorMember1(writer: SerializationWriter, matchDiscoverPage_nextCursorMember1?: Partial<MatchDiscoverPage_nextCursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesRequestBody(writer: SerializationWriter, matchesRequestBody?: Partial<MatchesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesRequestBody_cursor The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesRequestBody_cursor(writer: SerializationWriter, matchesRequestBody_cursor?: Partial<Parsable | MatchesRequestBody_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesRequestBody_cursorMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesRequestBody_cursorMember1(writer: SerializationWriter, matchesRequestBody_cursorMember1?: Partial<MatchesRequestBody_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OngoingMatchesResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOngoingMatchesResponse(writer: SerializationWriter, ongoingMatchesResponse?: Partial<OngoingMatchesResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationLeaderboardEntry The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationLeaderboardEntry(writer: SerializationWriter, organizationLeaderboardEntry?: Partial<OrganizationLeaderboardEntry> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationLeaderboardEntry_gameSlug The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationLeaderboardEntry_gameSlug(writer: SerializationWriter, organizationLeaderboardEntry_gameSlug?: Partial<Parsable | OrganizationLeaderboardEntry_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationLeaderboardEntry_gameSlugMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationLeaderboardEntry_gameSlugMember1(writer: SerializationWriter, organizationLeaderboardEntry_gameSlugMember1?: Partial<OrganizationLeaderboardEntry_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationLeaderboardEntry_stats The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationLeaderboardEntry_stats(writer: SerializationWriter, organizationLeaderboardEntry_stats?: Partial<OrganizationLeaderboardEntry_stats> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationLeaderboardResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationLeaderboardResponse(writer: SerializationWriter, organizationLeaderboardResponse?: Partial<OrganizationLeaderboardResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationLeaderboardResponse_gameSlug The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationLeaderboardResponse_gameSlug(writer: SerializationWriter, organizationLeaderboardResponse_gameSlug?: Partial<Parsable | OrganizationLeaderboardResponse_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationLeaderboardResponse_gameSlugMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationLeaderboardResponse_gameSlugMember1(writer: SerializationWriter, organizationLeaderboardResponse_gameSlugMember1?: Partial<OrganizationLeaderboardResponse_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param PenaltiesRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializePenaltiesRequestBody(writer: SerializationWriter, penaltiesRequestBody?: Partial<PenaltiesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param PlayerLeaderboardEntry The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializePlayerLeaderboardEntry(writer: SerializationWriter, playerLeaderboardEntry?: Partial<PlayerLeaderboardEntry> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param PlayerLeaderboardResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializePlayerLeaderboardResponse(writer: SerializationWriter, playerLeaderboardResponse?: Partial<PlayerLeaderboardResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RemoveDisplayRuleResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRemoveDisplayRuleResponse(writer: SerializationWriter, removeDisplayRuleResponse?: Partial<RemoveDisplayRuleResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RemoveLeagueGameResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRemoveLeagueGameResponse(writer: SerializationWriter, removeLeagueGameResponse?: Partial<RemoveLeagueGameResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RemoveLeagueMemberResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRemoveLeagueMemberResponse(writer: SerializationWriter, removeLeagueMemberResponse?: Partial<RemoveLeagueMemberResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RemoveLeagueTeamRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRemoveLeagueTeamRequestBody(writer: SerializationWriter, removeLeagueTeamRequestBody?: Partial<RemoveLeagueTeamRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RemoveLeagueTeamResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRemoveLeagueTeamResponse(writer: SerializationWriter, removeLeagueTeamResponse?: Partial<RemoveLeagueTeamResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ReorderDisplayRulesRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeReorderDisplayRulesRequestBody(writer: SerializationWriter, reorderDisplayRulesRequestBody?: Partial<ReorderDisplayRulesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ReorderDisplayRulesRequestBody_items The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeReorderDisplayRulesRequestBody_items(writer: SerializationWriter, reorderDisplayRulesRequestBody_items?: Partial<ReorderDisplayRulesRequestBody_items> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ReorderDisplayRulesResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeReorderDisplayRulesResponse(writer: SerializationWriter, reorderDisplayRulesResponse?: Partial<ReorderDisplayRulesResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ReplyLeagueTicketRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeReplyLeagueTicketRequestBody(writer: SerializationWriter, replyLeagueTicketRequestBody?: Partial<ReplyLeagueTicketRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ReplyLeagueTicketResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeReplyLeagueTicketResponse(writer: SerializationWriter, replyLeagueTicketResponse?: Partial<ReplyLeagueTicketResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ReportChatMessageRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeReportChatMessageRequestBody(writer: SerializationWriter, reportChatMessageRequestBody?: Partial<ReportChatMessageRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ReportChatMessageResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeReportChatMessageResponse(writer: SerializationWriter, reportChatMessageResponse?: Partial<ReportChatMessageResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RequestLeagueShutdownResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRequestLeagueShutdownResponse(writer: SerializationWriter, requestLeagueShutdownResponse?: Partial<RequestLeagueShutdownResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RevokeBanRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRevokeBanRequestBody(writer: SerializationWriter, revokeBanRequestBody?: Partial<RevokeBanRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RevokeBanResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRevokeBanResponse(writer: SerializationWriter, revokeBanResponse?: Partial<RevokeBanResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RulesRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRulesRequestBody(writer: SerializationWriter, rulesRequestBody?: Partial<RulesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param RuleWriteResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeRuleWriteResponse(writer: SerializationWriter, ruleWriteResponse?: Partial<RuleWriteResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ScoreConfirmer The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeScoreConfirmer(writer: SerializationWriter, scoreConfirmer?: Partial<ScoreConfirmer> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ScoreConfirmer_confirmedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeScoreConfirmer_confirmedAt(writer: SerializationWriter, scoreConfirmer_confirmedAt?: Partial<Parsable | ScoreConfirmer_confirmedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ScoreConfirmer_confirmedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeScoreConfirmer_confirmedAtMember1(writer: SerializationWriter, scoreConfirmer_confirmedAtMember1?: Partial<ScoreConfirmer_confirmedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ScoreSubmissionResult The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeScoreSubmissionResult(writer: SerializationWriter, scoreSubmissionResult?: Partial<ScoreSubmissionResult> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ScoreSubmitter The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeScoreSubmitter(writer: SerializationWriter, scoreSubmitter?: Partial<ScoreSubmitter> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ScoreSubmitter_name The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeScoreSubmitter_name(writer: SerializationWriter, scoreSubmitter_name?: Partial<Parsable | ScoreSubmitter_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ScoreSubmitter_nameMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeScoreSubmitter_nameMember1(writer: SerializationWriter, scoreSubmitter_nameMember1?: Partial<ScoreSubmitter_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param SeasonsRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeSeasonsRequestBody(writer: SerializationWriter, seasonsRequestBody?: Partial<SeasonsRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param SendChatMessageRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeSendChatMessageRequestBody(writer: SerializationWriter, sendChatMessageRequestBody?: Partial<SendChatMessageRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param SendChatMessageResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeSendChatMessageResponse(writer: SerializationWriter, sendChatMessageResponse?: Partial<SendChatMessageResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param SetLeagueEnabledRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeSetLeagueEnabledRequestBody(writer: SerializationWriter, setLeagueEnabledRequestBody?: Partial<SetLeagueEnabledRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param SetLeagueEnabledResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeSetLeagueEnabledResponse(writer: SerializationWriter, setLeagueEnabledResponse?: Partial<SetLeagueEnabledResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param StandingsRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeStandingsRequestBody(writer: SerializationWriter, standingsRequestBody?: Partial<StandingsRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param SubmitScoreBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeSubmitScoreBody(writer: SerializationWriter, submitScoreBody?: Partial<SubmitScoreBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param Team The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeam(writer: SerializationWriter, team?: Partial<Team> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param Team_avatarUrl The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeam_avatarUrl(writer: SerializationWriter, team_avatarUrl?: Partial<Parsable | Team_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param Team_avatarUrlMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeam_avatarUrlMember1(writer: SerializationWriter, team_avatarUrlMember1?: Partial<Team_avatarUrlMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TeamLeaderboardEntry The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeamLeaderboardEntry(writer: SerializationWriter, teamLeaderboardEntry?: Partial<TeamLeaderboardEntry> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TeamLeaderboardEntry_gameSlug The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeamLeaderboardEntry_gameSlug(writer: SerializationWriter, teamLeaderboardEntry_gameSlug?: Partial<Parsable | TeamLeaderboardEntry_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TeamLeaderboardEntry_gameSlugMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeamLeaderboardEntry_gameSlugMember1(writer: SerializationWriter, teamLeaderboardEntry_gameSlugMember1?: Partial<TeamLeaderboardEntry_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TeamLeaderboardResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeamLeaderboardResponse(writer: SerializationWriter, teamLeaderboardResponse?: Partial<TeamLeaderboardResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TeamLeaderboardResponse_gameSlug The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeamLeaderboardResponse_gameSlug(writer: SerializationWriter, teamLeaderboardResponse_gameSlug?: Partial<Parsable | TeamLeaderboardResponse_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TeamLeaderboardResponse_gameSlugMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeamLeaderboardResponse_gameSlugMember1(writer: SerializationWriter, teamLeaderboardResponse_gameSlugMember1?: Partial<TeamLeaderboardResponse_gameSlugMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail(writer: SerializationWriter, ticketDetail?: Partial<TicketDetail> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_closedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_closedAt(writer: SerializationWriter, ticketDetail_closedAt?: Partial<Parsable | TicketDetail_closedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_closedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_closedAtMember1(writer: SerializationWriter, ticketDetail_closedAtMember1?: Partial<TicketDetail_closedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_createdAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_createdAt(writer: SerializationWriter, ticketDetail_createdAt?: Partial<Parsable | TicketDetail_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_createdAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_createdAtMember1(writer: SerializationWriter, ticketDetail_createdAtMember1?: Partial<TicketDetail_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_messages The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_messages(writer: SerializationWriter, ticketDetail_messages?: Partial<TicketDetail_messages> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_messages_createdAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_messages_createdAt(writer: SerializationWriter, ticketDetail_messages_createdAt?: Partial<Parsable | TicketDetail_messages_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_messages_createdAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_messages_createdAtMember1(writer: SerializationWriter, ticketDetail_messages_createdAtMember1?: Partial<TicketDetail_messages_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_resolvedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_resolvedAt(writer: SerializationWriter, ticketDetail_resolvedAt?: Partial<Parsable | TicketDetail_resolvedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_resolvedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_resolvedAtMember1(writer: SerializationWriter, ticketDetail_resolvedAtMember1?: Partial<TicketDetail_resolvedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_updatedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_updatedAt(writer: SerializationWriter, ticketDetail_updatedAt?: Partial<Parsable | TicketDetail_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketDetail_updatedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketDetail_updatedAtMember1(writer: SerializationWriter, ticketDetail_updatedAtMember1?: Partial<TicketDetail_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketSummary The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketSummary(writer: SerializationWriter, ticketSummary?: Partial<TicketSummary> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketSummary_createdAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketSummary_createdAt(writer: SerializationWriter, ticketSummary_createdAt?: Partial<Parsable | TicketSummary_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketSummary_createdAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketSummary_createdAtMember1(writer: SerializationWriter, ticketSummary_createdAtMember1?: Partial<TicketSummary_createdAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketSummary_updatedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketSummary_updatedAt(writer: SerializationWriter, ticketSummary_updatedAt?: Partial<Parsable | TicketSummary_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketSummary_updatedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketSummary_updatedAtMember1(writer: SerializationWriter, ticketSummary_updatedAtMember1?: Partial<TicketSummary_updatedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ToggleLeagueGameRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeToggleLeagueGameRequestBody(writer: SerializationWriter, toggleLeagueGameRequestBody?: Partial<ToggleLeagueGameRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param ToggleLeagueGameResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeToggleLeagueGameResponse(writer: SerializationWriter, toggleLeagueGameResponse?: Partial<ToggleLeagueGameResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TransferLeagueOwnershipRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTransferLeagueOwnershipRequestBody(writer: SerializationWriter, transferLeagueOwnershipRequestBody?: Partial<TransferLeagueOwnershipRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TransferLeagueOwnershipResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTransferLeagueOwnershipResponse(writer: SerializationWriter, transferLeagueOwnershipResponse?: Partial<TransferLeagueOwnershipResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchBadgeSet The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchBadgeSet(writer: SerializationWriter, twitchBadgeSet?: Partial<TwitchBadgeSet> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchBadgeVersion The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchBadgeVersion(writer: SerializationWriter, twitchBadgeVersion?: Partial<TwitchBadgeVersion> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchChannelBadges The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchChannelBadges(writer: SerializationWriter, twitchChannelBadges?: Partial<TwitchChannelBadges> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchChannelBadges_broadcaster_id The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchChannelBadges_broadcaster_id(writer: SerializationWriter, twitchChannelBadges_broadcaster_id?: Partial<Parsable | TwitchChannelBadges_broadcaster_idMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchChannelBadges_broadcaster_idMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchChannelBadges_broadcaster_idMember1(writer: SerializationWriter, twitchChannelBadges_broadcaster_idMember1?: Partial<TwitchChannelBadges_broadcaster_idMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchChannelBadges_broadcaster_name The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchChannelBadges_broadcaster_name(writer: SerializationWriter, twitchChannelBadges_broadcaster_name?: Partial<Parsable | TwitchChannelBadges_broadcaster_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchChannelBadges_broadcaster_nameMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchChannelBadges_broadcaster_nameMember1(writer: SerializationWriter, twitchChannelBadges_broadcaster_nameMember1?: Partial<TwitchChannelBadges_broadcaster_nameMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TwitchGlobalBadges The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTwitchGlobalBadges(writer: SerializationWriter, twitchGlobalBadges?: Partial<TwitchGlobalBadges> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateAttendanceRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateAttendanceRequestBody(writer: SerializationWriter, updateAttendanceRequestBody?: Partial<UpdateAttendanceRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateAttendanceResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateAttendanceResponse(writer: SerializationWriter, updateAttendanceResponse?: Partial<UpdateAttendanceResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateGameRulesRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateGameRulesRequestBody(writer: SerializationWriter, updateGameRulesRequestBody?: Partial<UpdateGameRulesRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateGameRulesRequestBody_allowedTimeRange The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateGameRulesRequestBody_allowedTimeRange(writer: SerializationWriter, updateGameRulesRequestBody_allowedTimeRange?: Partial<UpdateGameRulesRequestBody_allowedTimeRange> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateGameRulesRequestBody_rosterChangeWindowTime The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateGameRulesRequestBody_rosterChangeWindowTime(writer: SerializationWriter, updateGameRulesRequestBody_rosterChangeWindowTime?: Partial<UpdateGameRulesRequestBody_rosterChangeWindowTime> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateGameRulesRequestBody_teamSize The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateGameRulesRequestBody_teamSize(writer: SerializationWriter, updateGameRulesRequestBody_teamSize?: Partial<UpdateGameRulesRequestBody_teamSize> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueBrandingRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueBrandingRequestBody(writer: SerializationWriter, updateLeagueBrandingRequestBody?: Partial<UpdateLeagueBrandingRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueBrandingResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueBrandingResponse(writer: SerializationWriter, updateLeagueBrandingResponse?: Partial<UpdateLeagueBrandingResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueCooldownConfigRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueCooldownConfigRequestBody(writer: SerializationWriter, updateLeagueCooldownConfigRequestBody?: Partial<UpdateLeagueCooldownConfigRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueCooldownConfigResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueCooldownConfigResponse(writer: SerializationWriter, updateLeagueCooldownConfigResponse?: Partial<UpdateLeagueCooldownConfigResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueMemberRoleRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueMemberRoleRequestBody(writer: SerializationWriter, updateLeagueMemberRoleRequestBody?: Partial<UpdateLeagueMemberRoleRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueMemberRoleResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueMemberRoleResponse(writer: SerializationWriter, updateLeagueMemberRoleResponse?: Partial<UpdateLeagueMemberRoleResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueTicketRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueTicketRequestBody(writer: SerializationWriter, updateLeagueTicketRequestBody?: Partial<UpdateLeagueTicketRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueTicketRequestBody_assignedTo The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueTicketRequestBody_assignedTo(writer: SerializationWriter, updateLeagueTicketRequestBody_assignedTo?: Partial<Parsable | UpdateLeagueTicketRequestBody_assignedToMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueTicketRequestBody_assignedToMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueTicketRequestBody_assignedToMember1(writer: SerializationWriter, updateLeagueTicketRequestBody_assignedToMember1?: Partial<UpdateLeagueTicketRequestBody_assignedToMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLeagueTicketResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLeagueTicketResponse(writer: SerializationWriter, updateLeagueTicketResponse?: Partial<UpdateLeagueTicketResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLobbyCodeRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLobbyCodeRequestBody(writer: SerializationWriter, updateLobbyCodeRequestBody?: Partial<UpdateLobbyCodeRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateLobbyCodeResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateLobbyCodeResponse(writer: SerializationWriter, updateLobbyCodeResponse?: Partial<UpdateLobbyCodeResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdatePointsConfigRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdatePointsConfigRequestBody(writer: SerializationWriter, updatePointsConfigRequestBody?: Partial<UpdatePointsConfigRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdatePointsConfigRequestBody_streakBreakpoints The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdatePointsConfigRequestBody_streakBreakpoints(writer: SerializationWriter, updatePointsConfigRequestBody_streakBreakpoints?: Partial<UpdatePointsConfigRequestBody_streakBreakpoints> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdatePointsConfigResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdatePointsConfigResponse(writer: SerializationWriter, updatePointsConfigResponse?: Partial<UpdatePointsConfigResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpdateWebhookBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpdateWebhookBody(writer: SerializationWriter, updateWebhookBody?: Partial<UpdateWebhookBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpsertDisplayRuleRequestBody The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpsertDisplayRuleRequestBody(writer: SerializationWriter, upsertDisplayRuleRequestBody?: Partial<UpsertDisplayRuleRequestBody> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpsertDisplayRuleRequestBody_content The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpsertDisplayRuleRequestBody_content(writer: SerializationWriter, upsertDisplayRuleRequestBody_content?: Partial<UpsertDisplayRuleRequestBody_content> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpsertDisplayRuleRequestBody_content_sections The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpsertDisplayRuleRequestBody_content_sections(writer: SerializationWriter, upsertDisplayRuleRequestBody_content_sections?: Partial<UpsertDisplayRuleRequestBody_content_sections> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpsertDisplayRuleRequestBody_scope The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpsertDisplayRuleRequestBody_scope(writer: SerializationWriter, upsertDisplayRuleRequestBody_scope?: Partial<UpsertDisplayRuleRequestBody_scope> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UpsertDisplayRuleResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUpsertDisplayRuleResponse(writer: SerializationWriter, upsertDisplayRuleResponse?: Partial<UpsertDisplayRuleResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UserMatch The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUserMatch(writer: SerializationWriter, userMatch?: Partial<UserMatch> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UserMatch_completedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUserMatch_completedAt(writer: SerializationWriter, userMatch_completedAt?: Partial<Parsable | UserMatch_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UserMatch_completedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUserMatch_completedAtMember1(writer: SerializationWriter, userMatch_completedAtMember1?: Partial<UserMatch_completedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UserMatch_scheduledAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUserMatch_scheduledAt(writer: SerializationWriter, userMatch_scheduledAt?: Partial<Parsable | UserMatch_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UserMatch_scheduledAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUserMatch_scheduledAtMember1(writer: SerializationWriter, userMatch_scheduledAtMember1?: Partial<UserMatch_scheduledAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UserMatch_startedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUserMatch_startedAt(writer: SerializationWriter, userMatch_startedAt?: Partial<Parsable | UserMatch_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param UserMatch_startedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeUserMatch_startedAtMember1(writer: SerializationWriter, userMatch_startedAtMember1?: Partial<UserMatch_startedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery(writer: SerializationWriter, webhookDelivery?: Partial<WebhookDelivery> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_deliveredAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_deliveredAt(writer: SerializationWriter, webhookDelivery_deliveredAt?: Partial<Parsable | WebhookDelivery_deliveredAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_deliveredAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_deliveredAtMember1(writer: SerializationWriter, webhookDelivery_deliveredAtMember1?: Partial<WebhookDelivery_deliveredAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_errorMessage The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_errorMessage(writer: SerializationWriter, webhookDelivery_errorMessage?: Partial<Parsable | WebhookDelivery_errorMessageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_errorMessageMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_errorMessageMember1(writer: SerializationWriter, webhookDelivery_errorMessageMember1?: Partial<WebhookDelivery_errorMessageMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_nextAttemptAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_nextAttemptAt(writer: SerializationWriter, webhookDelivery_nextAttemptAt?: Partial<Parsable | WebhookDelivery_nextAttemptAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_nextAttemptAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_nextAttemptAtMember1(writer: SerializationWriter, webhookDelivery_nextAttemptAtMember1?: Partial<WebhookDelivery_nextAttemptAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_statusCode The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_statusCode(writer: SerializationWriter, webhookDelivery_statusCode?: Partial<Parsable | WebhookDelivery_statusCodeMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookDelivery_statusCodeMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookDelivery_statusCodeMember1(writer: SerializationWriter, webhookDelivery_statusCodeMember1?: Partial<WebhookDelivery_statusCodeMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookEndpoint The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookEndpoint(writer: SerializationWriter, webhookEndpoint?: Partial<WebhookEndpoint> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookEndpoint_label The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookEndpoint_label(writer: SerializationWriter, webhookEndpoint_label?: Partial<Parsable | WebhookEndpoint_labelMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookEndpoint_labelMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookEndpoint_labelMember1(writer: SerializationWriter, webhookEndpoint_labelMember1?: Partial<WebhookEndpoint_labelMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookEndpoint_lastDeliveredAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookEndpoint_lastDeliveredAt(writer: SerializationWriter, webhookEndpoint_lastDeliveredAt?: Partial<Parsable | WebhookEndpoint_lastDeliveredAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookEndpoint_lastDeliveredAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookEndpoint_lastDeliveredAtMember1(writer: SerializationWriter, webhookEndpoint_lastDeliveredAtMember1?: Partial<WebhookEndpoint_lastDeliveredAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookEndpoint_lastFailedAt The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookEndpoint_lastFailedAt(writer: SerializationWriter, webhookEndpoint_lastFailedAt?: Partial<Parsable | WebhookEndpoint_lastFailedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookEndpoint_lastFailedAtMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookEndpoint_lastFailedAtMember1(writer: SerializationWriter, webhookEndpoint_lastFailedAtMember1?: Partial<WebhookEndpoint_lastFailedAtMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookListResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookListResponse(writer: SerializationWriter, webhookListResponse?: Partial<WebhookListResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookOk The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookOk(writer: SerializationWriter, webhookOk?: Partial<WebhookOk> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookReplayResult The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookReplayResult(writer: SerializationWriter, webhookReplayResult?: Partial<WebhookReplayResult> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookSecret The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookSecret(writer: SerializationWriter, webhookSecret?: Partial<WebhookSecret> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WebhookTestResult The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWebhookTestResult(writer: SerializationWriter, webhookTestResult?: Partial<WebhookTestResult> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * League enabled-state update.
 */
export interface SetLeagueEnabledRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Whether the league is enabled/discoverable.
     */
    isEnabled?: boolean | null;
}
export interface SetLeagueEnabledResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Season and game filters for league standings.
 */
export interface StandingsRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Filter standings to a specific game id.
     */
    gameId?: string | null;
    /**
     * Maximum number of teams to return (1-100). Defaults to 50.
     */
    limit?: number | null;
    /**
     * Filter standings to a specific season id.
     */
    seasonId?: string | null;
}
export type StrategyVisibility = (typeof StrategyVisibilityObject)[keyof typeof StrategyVisibilityObject];
export type StreamPlatform = (typeof StreamPlatformObject)[keyof typeof StreamPlatformObject];
/**
 * Map score submission payload for a single map.
 */
export interface SubmitScoreBody extends AdditionalDataHolder, Parsable {
    /**
     * Creator team score (integer, 0-1000).
     */
    creatorTeamScore?: number | null;
    /**
     * Map identifier string (e.g. dust2).
     */
    mapId?: string | null;
    /**
     * Zero-based map index. Must be a non-negative integer.
     */
    mapIndex?: number | null;
    /**
     * Accepted/opponent team score (integer, 0-1000).
     */
    opponentTeamScore?: number | null;
    /**
     * Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
     */
    screenshotStorageIds?: string[] | null;
    /**
     * Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
     */
    screenshotUrls?: string[] | null;
}
/**
 * A team participating in a match.
 */
export interface Team extends Parsable {
    /**
     * Team avatar URL.
     */
    avatarUrl?: string | Team_avatarUrlMember1 | null;
    /**
     * Team ID.
     */
    id?: string | null;
    /**
     * Team name.
     */
    name?: string | null;
    /**
     * Team tag (short identifier).
     */
    tag?: string | null;
}
export type Team_avatarUrl = string | Team_avatarUrlMember1;
export interface Team_avatarUrlMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Team leaderboard row.
 */
export interface TeamLeaderboardEntry extends Parsable {
    /**
     * The gameSlug property
     */
    gameSlug?: string | TeamLeaderboardEntry_gameSlugMember1 | null;
    /**
     * Team ID.
     */
    id?: string | null;
    /**
     * The rank property
     */
    rank?: number | null;
    /**
     * Aggregate stats used for leaderboard ranking.
     */
    stats?: LeaderboardStats | null;
    /**
     * Small API-safe team summary.
     */
    team?: ApiTeamSummary | null;
}
export type TeamLeaderboardEntry_gameSlug = string | TeamLeaderboardEntry_gameSlugMember1;
export interface TeamLeaderboardEntry_gameSlugMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Team leaderboard response.
 */
export interface TeamLeaderboardResponse extends Parsable {
    /**
     * The gameSlug property
     */
    gameSlug?: string | TeamLeaderboardResponse_gameSlugMember1 | null;
    /**
     * Supported leaderboard sort field.
     */
    sortBy?: LeaderboardSortBy | null;
    /**
     * The teams property
     */
    teams?: TeamLeaderboardEntry[] | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export type TeamLeaderboardResponse_gameSlug = string | TeamLeaderboardResponse_gameSlugMember1;
export interface TeamLeaderboardResponse_gameSlugMember1 extends AdditionalDataHolder, Parsable {
}
export interface TicketDetail extends Parsable {
    /**
     * The category property
     */
    category?: string | null;
    /**
     * The closedAt property
     */
    closedAt?: string | TicketDetail_closedAtMember1 | null;
    /**
     * The createdAt property
     */
    createdAt?: string | TicketDetail_createdAtMember1 | null;
    /**
     * The description property
     */
    description?: string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The messages property
     */
    messages?: TicketDetail_messages[] | null;
    /**
     * The priority property
     */
    priority?: TicketDetail_priority | null;
    /**
     * The resolvedAt property
     */
    resolvedAt?: string | TicketDetail_resolvedAtMember1 | null;
    /**
     * The status property
     */
    status?: TicketDetail_status | null;
    /**
     * The subject property
     */
    subject?: string | null;
    /**
     * The ticketNumber property
     */
    ticketNumber?: number | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
    /**
     * The updatedAt property
     */
    updatedAt?: string | TicketDetail_updatedAtMember1 | null;
}
export type TicketDetail_closedAt = string | TicketDetail_closedAtMember1;
export interface TicketDetail_closedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type TicketDetail_createdAt = string | TicketDetail_createdAtMember1;
export interface TicketDetail_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export interface TicketDetail_messages extends Parsable {
    /**
     * The content property
     */
    content?: string | null;
    /**
     * The createdAt property
     */
    createdAt?: string | TicketDetail_messages_createdAtMember1 | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The isOwnMessage property
     */
    isOwnMessage?: boolean | null;
    /**
     * The isSystem property
     */
    isSystem?: boolean | null;
}
export type TicketDetail_messages_createdAt = string | TicketDetail_messages_createdAtMember1;
export interface TicketDetail_messages_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type TicketDetail_priority = (typeof TicketDetail_priorityObject)[keyof typeof TicketDetail_priorityObject];
export type TicketDetail_resolvedAt = string | TicketDetail_resolvedAtMember1;
export interface TicketDetail_resolvedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type TicketDetail_status = (typeof TicketDetail_statusObject)[keyof typeof TicketDetail_statusObject];
export type TicketDetail_updatedAt = string | TicketDetail_updatedAtMember1;
export interface TicketDetail_updatedAtMember1 extends AdditionalDataHolder, Parsable {
}
export interface TicketSummary extends Parsable {
    /**
     * The category property
     */
    category?: string | null;
    /**
     * The createdAt property
     */
    createdAt?: string | TicketSummary_createdAtMember1 | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * The priority property
     */
    priority?: TicketSummary_priority | null;
    /**
     * The status property
     */
    status?: TicketSummary_status | null;
    /**
     * The subject property
     */
    subject?: string | null;
    /**
     * The ticketNumber property
     */
    ticketNumber?: number | null;
    /**
     * The updatedAt property
     */
    updatedAt?: string | TicketSummary_updatedAtMember1 | null;
}
export type TicketSummary_createdAt = string | TicketSummary_createdAtMember1;
export interface TicketSummary_createdAtMember1 extends AdditionalDataHolder, Parsable {
}
export type TicketSummary_priority = (typeof TicketSummary_priorityObject)[keyof typeof TicketSummary_priorityObject];
export type TicketSummary_status = (typeof TicketSummary_statusObject)[keyof typeof TicketSummary_statusObject];
export type TicketSummary_updatedAt = string | TicketSummary_updatedAtMember1;
export interface TicketSummary_updatedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Toggles a league game.
 */
export interface ToggleLeagueGameRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Whether the game should be active.
     */
    isActive?: boolean | null;
}
export interface ToggleLeagueGameResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Transfers league ownership to an existing staff member.
 */
export interface TransferLeagueOwnershipRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * User ID of the target league owner.
     */
    targetUserId?: string | null;
}
export interface TransferLeagueOwnershipResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * A set of related Twitch chat badge versions.
 */
export interface TwitchBadgeSet extends Parsable {
    /**
     * Badge set identifier (e.g. subscriber, moderator).
     */
    setId?: string | null;
    /**
     * Available versions within this badge set.
     */
    versions?: TwitchBadgeVersion[] | null;
}
/**
 * A single version of a Twitch chat badge.
 */
export interface TwitchBadgeVersion extends Parsable {
    /**
     * Optional click action identifier.
     */
    clickAction?: string | null;
    /**
     * Optional URL opened when the badge is clicked.
     */
    clickUrl?: string | null;
    /**
     * Human-readable badge description.
     */
    description?: string | null;
    /**
     * Badge version id (e.g. tier level or numeric id).
     */
    id?: string | null;
    /**
     * Badge image URL at 1x resolution.
     */
    imageUrl1x?: string | null;
    /**
     * Badge image URL at 2x resolution.
     */
    imageUrl2x?: string | null;
    /**
     * Badge image URL at 4x resolution.
     */
    imageUrl4x?: string | null;
    /**
     * Human-readable badge title.
     */
    title?: string | null;
}
/**
 * Channel-specific Twitch chat badges.
 */
export interface TwitchChannelBadges extends Parsable {
    /**
     * Channel-specific Twitch chat badge sets.
     */
    badges?: TwitchBadgeSet[] | null;
    /**
     * Resolved broadcaster (channel) id.
     */
    broadcasterId?: string | TwitchChannelBadges_broadcaster_idMember1 | null;
    /**
     * Resolved broadcaster display name or login.
     */
    broadcasterName?: string | TwitchChannelBadges_broadcaster_nameMember1 | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
export type TwitchChannelBadges_broadcaster_id = string | TwitchChannelBadges_broadcaster_idMember1;
export interface TwitchChannelBadges_broadcaster_idMember1 extends AdditionalDataHolder, Parsable {
}
export type TwitchChannelBadges_broadcaster_name = string | TwitchChannelBadges_broadcaster_nameMember1;
export interface TwitchChannelBadges_broadcaster_nameMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Global Twitch chat badges.
 */
export interface TwitchGlobalBadges extends Parsable {
    /**
     * Global Twitch chat badge sets.
     */
    badges?: TwitchBadgeSet[] | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Updates the API key owner's own attendance status for a match.
 */
export interface UpdateAttendanceRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The API key owner's attendance status for this match.
     */
    status?: UpdateAttendanceRequestBody_status | null;
}
export type UpdateAttendanceRequestBody_status = (typeof UpdateAttendanceRequestBody_statusObject)[keyof typeof UpdateAttendanceRequestBody_statusObject];
export interface UpdateAttendanceResponse extends Parsable {
    /**
     * The message property
     */
    message?: string | null;
    /**
     * The reclaimedSpot property
     */
    reclaimedSpot?: boolean | null;
    /**
     * The replacedBy property
     */
    replacedBy?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Updates league game rules.
 */
export interface UpdateGameRulesRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The allowedDays property
     */
    allowedDays?: string[] | null;
    /**
     * The allowedMapIds property
     */
    allowedMapIds?: string[] | null;
    /**
     * The allowedPlaylistIds property
     */
    allowedPlaylistIds?: string[] | null;
    /**
     * The allowedTimeRange property
     */
    allowedTimeRange?: UpdateGameRulesRequestBody_allowedTimeRange | null;
    /**
     * The blockedDays property
     */
    blockedDays?: string[] | null;
    /**
     * The challengeCooldownMinutes property
     */
    challengeCooldownMinutes?: number | null;
    /**
     * The challengesEnabled property
     */
    challengesEnabled?: boolean | null;
    /**
     * The forceCompetitive property
     */
    forceCompetitive?: boolean | null;
    /**
     * Game ID whose league rules should change.
     */
    gameId?: string | null;
    /**
     * The matchFormat property
     */
    matchFormat?: UpdateGameRulesRequestBody_matchFormat | null;
    /**
     * The maxChallengesPerTeamPerSeason property
     */
    maxChallengesPerTeamPerSeason?: number | null;
    /**
     * The maxPendingChallengesPerOpponent property
     */
    maxPendingChallengesPerOpponent?: number | null;
    /**
     * The maxPendingChallengesTotal property
     */
    maxPendingChallengesTotal?: number | null;
    /**
     * The maxPointsMatchesPerPairPer24h property
     */
    maxPointsMatchesPerPairPer24h?: number | null;
    /**
     * The maxRosterChangesPerWeek property
     */
    maxRosterChangesPerWeek?: number | null;
    /**
     * The maxRosterSize property
     */
    maxRosterSize?: number | null;
    /**
     * The maxWagerAmount property
     */
    maxWagerAmount?: number | null;
    /**
     * The minRosterSize property
     */
    minRosterSize?: number | null;
    /**
     * The minWagerAmount property
     */
    minWagerAmount?: number | null;
    /**
     * The rosterChangeWindowDays property
     */
    rosterChangeWindowDays?: string[] | null;
    /**
     * The rosterChangeWindowTime property
     */
    rosterChangeWindowTime?: UpdateGameRulesRequestBody_rosterChangeWindowTime | null;
    /**
     * The rosterLockEnabled property
     */
    rosterLockEnabled?: boolean | null;
    /**
     * The teamSize property
     */
    teamSize?: UpdateGameRulesRequestBody_teamSize | null;
    /**
     * The timezone property
     */
    timezone?: string | null;
    /**
     * The wagersAllowed property
     */
    wagersAllowed?: boolean | null;
}
export interface UpdateGameRulesRequestBody_allowedTimeRange extends AdditionalDataHolder, Parsable {
    /**
     * The end property
     */
    end?: string | null;
    /**
     * The start property
     */
    start?: string | null;
}
export type UpdateGameRulesRequestBody_matchFormat = (typeof UpdateGameRulesRequestBody_matchFormatObject)[keyof typeof UpdateGameRulesRequestBody_matchFormatObject];
export interface UpdateGameRulesRequestBody_rosterChangeWindowTime extends AdditionalDataHolder, Parsable {
    /**
     * The end property
     */
    end?: string | null;
    /**
     * The start property
     */
    start?: string | null;
}
export interface UpdateGameRulesRequestBody_teamSize extends AdditionalDataHolder, Parsable {
    /**
     * The max property
     */
    max?: number | null;
    /**
     * The min property
     */
    min?: number | null;
}
/**
 * Updates league profile branding and public metadata.
 */
export interface UpdateLeagueBrandingRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Convex storage ID for the league avatar.
     */
    avatarStorageId?: string | null;
    /**
     * Convex storage ID for the league banner.
     */
    bannerStorageId?: string | null;
    /**
     * The description property
     */
    description?: string | null;
    /**
     * The name property
     */
    name?: string | null;
    /**
     * The profileThemeId property
     */
    profileThemeId?: string | null;
    /**
     * The socials property
     */
    socials?: LeagueBrandingSocials | null;
}
export interface UpdateLeagueBrandingResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Updates league member cooldown configuration.
 */
export interface UpdateLeagueCooldownConfigRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The kickCooldownHours property
     */
    kickCooldownHours?: number | null;
    /**
     * The maxCooldownHours property
     */
    maxCooldownHours?: number | null;
    /**
     * The repeatLeaveCooldownMultiplier property
     */
    repeatLeaveCooldownMultiplier?: number | null;
    /**
     * The repeatLeavePenaltyEnabled property
     */
    repeatLeavePenaltyEnabled?: boolean | null;
    /**
     * The selfLeaveCooldownHours property
     */
    selfLeaveCooldownHours?: number | null;
}
export interface UpdateLeagueCooldownConfigResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Updates a league staff member role.
 */
export interface UpdateLeagueMemberRoleRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Assignable league staff role. OWNER cannot be assigned through this API.
     */
    role?: UpdateLeagueMemberRoleRequestBody_role | null;
}
export type UpdateLeagueMemberRoleRequestBody_role = (typeof UpdateLeagueMemberRoleRequestBody_roleObject)[keyof typeof UpdateLeagueMemberRoleRequestBody_roleObject];
export interface UpdateLeagueMemberRoleResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Updates league ticket status, priority, or assignment.
 */
export interface UpdateLeagueTicketRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * User ID to assign, or null to clear assignment.
     */
    assignedTo?: string | UpdateLeagueTicketRequestBody_assignedToMember1 | null;
    /**
     * The priority property
     */
    priority?: UpdateLeagueTicketRequestBody_priority | null;
    /**
     * The status property
     */
    status?: UpdateLeagueTicketRequestBody_status | null;
}
export type UpdateLeagueTicketRequestBody_assignedTo = string | UpdateLeagueTicketRequestBody_assignedToMember1;
export interface UpdateLeagueTicketRequestBody_assignedToMember1 extends AdditionalDataHolder, Parsable {
}
export type UpdateLeagueTicketRequestBody_priority = (typeof UpdateLeagueTicketRequestBody_priorityObject)[keyof typeof UpdateLeagueTicketRequestBody_priorityObject];
export type UpdateLeagueTicketRequestBody_status = (typeof UpdateLeagueTicketRequestBody_statusObject)[keyof typeof UpdateLeagueTicketRequestBody_statusObject];
export interface UpdateLeagueTicketResponse extends Parsable {
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * Response generation time (ISO 8601).
     */
    timestamp?: string | null;
}
/**
 * Sets or updates the match lobby code as the API key owner.
 */
export interface UpdateLobbyCodeRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Lobby code to set for the match.
     */
    lobbyCode?: string | null;
}
export interface UpdateLobbyCodeResponse extends Parsable {
    /**
     * The lobbyCode property
     */
    lobbyCode?: string | null;
    /**
     * The statusChanged property
     */
    statusChanged?: boolean | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Updates league points configuration.
 */
export interface UpdatePointsConfigRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * The allowNegative property
     */
    allowNegative?: boolean | null;
    /**
     * The baseDraw property
     */
    baseDraw?: number | null;
    /**
     * The baseLoss property
     */
    baseLoss?: number | null;
    /**
     * The baseWin property
     */
    baseWin?: number | null;
    /**
     * The challengeCancelGracePeriodHours property
     */
    challengeCancelGracePeriodHours?: number | null;
    /**
     * The challengedWinBonus property
     */
    challengedWinBonus?: number | null;
    /**
     * The challengeRefuseAdditionalPenalty property
     */
    challengeRefuseAdditionalPenalty?: number | null;
    /**
     * The challengerWinBonus property
     */
    challengerWinBonus?: number | null;
    /**
     * The forfeitPenalty property
     */
    forfeitPenalty?: number | null;
    /**
     * Game ID whose points config should change.
     */
    gameId?: string | null;
    /**
     * The matchupCooldownHours property
     */
    matchupCooldownHours?: number | null;
    /**
     * The scrimmageAwardsPoints property
     */
    scrimmageAwardsPoints?: boolean | null;
    /**
     * The streakBonusEnabled property
     */
    streakBonusEnabled?: boolean | null;
    /**
     * The streakBreakpoints property
     */
    streakBreakpoints?: UpdatePointsConfigRequestBody_streakBreakpoints[] | null;
    /**
     * The unitLabel property
     */
    unitLabel?: UpdatePointsConfigRequestBody_unitLabel | null;
}
export interface UpdatePointsConfigRequestBody_streakBreakpoints extends AdditionalDataHolder, Parsable {
    /**
     * The bonus property
     */
    bonus?: number | null;
    /**
     * The count property
     */
    count?: number | null;
}
export type UpdatePointsConfigRequestBody_unitLabel = (typeof UpdatePointsConfigRequestBody_unitLabelObject)[keyof typeof UpdatePointsConfigRequestBody_unitLabelObject];
export interface UpdatePointsConfigResponse extends Parsable {
    /**
     * The configId property
     */
    configId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Partial update of a webhook endpoint.
 */
export interface UpdateWebhookBody extends AdditionalDataHolder, Parsable {
    /**
     * Replacement event token list (at least one when present).
     */
    events?: string[] | null;
    /**
     * Enable/disable the endpoint. Re-enabling resets the failure count.
     */
    isActive?: boolean | null;
    /**
     * New human label.
     */
    label?: string | null;
    /**
     * New HTTPS endpoint URL.
     */
    url?: string | null;
}
/**
 * Creates or updates a display rule.
 */
export interface UpsertDisplayRuleRequestBody extends AdditionalDataHolder, Parsable {
    /**
     * Display rule category.
     */
    category?: string | null;
    /**
     * The categoryIcon property
     */
    categoryIcon?: string | null;
    /**
     * The categoryOrder property
     */
    categoryOrder?: number | null;
    /**
     * The content property
     */
    content?: UpsertDisplayRuleRequestBody_content | null;
    /**
     * Game ID whose display rule should change.
     */
    gameId?: string | null;
    /**
     * The isCustomCategory property
     */
    isCustomCategory?: boolean | null;
    /**
     * The isOverride property
     */
    isOverride?: boolean | null;
    /**
     * The scope property
     */
    scope?: UpsertDisplayRuleRequestBody_scope | null;
}
export interface UpsertDisplayRuleRequestBody_content extends AdditionalDataHolder, Parsable {
    /**
     * The sections property
     */
    sections?: UpsertDisplayRuleRequestBody_content_sections[] | null;
}
export interface UpsertDisplayRuleRequestBody_content_sections extends AdditionalDataHolder, Parsable {
    /**
     * The heading property
     */
    heading?: string | null;
    /**
     * The items property
     */
    items?: string[] | null;
}
export interface UpsertDisplayRuleRequestBody_scope extends AdditionalDataHolder, Parsable {
    /**
     * The modes property
     */
    modes?: string[] | null;
    /**
     * The playlists property
     */
    playlists?: string[] | null;
}
export interface UpsertDisplayRuleResponse extends Parsable {
    /**
     * The displayRuleId property
     */
    displayRuleId?: string | null;
    /**
     * The success property
     */
    success?: boolean | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
/**
 * Match as returned by the user/team/org match-listing endpoints.
 */
export interface UserMatch extends Parsable {
    /**
     * The acceptedTeam property
     */
    acceptedTeam?: Team | null;
    /**
     * Number of maps in the series (1, 3, 5, or 7).
     */
    bestOf?: number | null;
    /**
     * Completion time (ISO 8601).
     */
    completedAt?: string | UserMatch_completedAtMember1 | null;
    /**
     * The creatorTeam property
     */
    creatorTeam?: Team | null;
    /**
     * Game definition.
     */
    game?: Game | null;
    /**
     * Game mode (e.g. HARDPOINT, SEARCH_AND_DESTROY).
     */
    gameMode?: string | null;
    /**
     * The id property
     */
    id?: string | null;
    /**
     * Scheduled start time (ISO 8601).
     */
    scheduledAt?: string | UserMatch_scheduledAtMember1 | null;
    /**
     * Actual start time (ISO 8601).
     */
    startedAt?: string | UserMatch_startedAtMember1 | null;
    /**
     * Lifecycle status of a match.
     */
    status?: MatchStatus | null;
}
export type UserMatch_completedAt = string | UserMatch_completedAtMember1;
export interface UserMatch_completedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type UserMatch_scheduledAt = string | UserMatch_scheduledAtMember1;
export interface UserMatch_scheduledAtMember1 extends AdditionalDataHolder, Parsable {
}
export type UserMatch_startedAt = string | UserMatch_startedAtMember1;
export interface UserMatch_startedAtMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * A single webhook delivery-log row.
 */
export interface WebhookDelivery extends Parsable {
    /**
     * Number of delivery attempts made.
     */
    attemptCount?: number | null;
    /**
     * Emit/creation epoch ms (retention key).
     */
    createdAt?: number | null;
    /**
     * Epoch ms of successful delivery, or null.
     */
    deliveredAt?: number | WebhookDelivery_deliveredAtMember1 | null;
    /**
     * Last error message, or null.
     */
    errorMessage?: string | WebhookDelivery_errorMessageMember1 | null;
    /**
     * The delivered event name.
     */
    event?: string | null;
    /**
     * Delivery-log row id.
     */
    id?: string | null;
    /**
     * Stable evt_ id, reused across retries (idempotency key).
     */
    idempotencyId?: string | null;
    /**
     * True for test.ping deliveries.
     */
    isTest?: boolean | null;
    /**
     * Epoch ms of the next scheduled retry, or null.
     */
    nextAttemptAt?: number | WebhookDelivery_nextAttemptAtMember1 | null;
    /**
     * Lifecycle status of one logical delivery (endpoint x idempotency id).
     */
    status?: WebhookDelivery_status | null;
    /**
     * Last HTTP response status, or null.
     */
    statusCode?: number | WebhookDelivery_statusCodeMember1 | null;
    /**
     * Last update epoch ms.
     */
    updatedAt?: number | null;
}
export type WebhookDelivery_deliveredAt = number | WebhookDelivery_deliveredAtMember1;
export interface WebhookDelivery_deliveredAtMember1 extends AdditionalDataHolder, Parsable {
}
export type WebhookDelivery_errorMessage = string | WebhookDelivery_errorMessageMember1;
export interface WebhookDelivery_errorMessageMember1 extends AdditionalDataHolder, Parsable {
}
export type WebhookDelivery_nextAttemptAt = number | WebhookDelivery_nextAttemptAtMember1;
export interface WebhookDelivery_nextAttemptAtMember1 extends AdditionalDataHolder, Parsable {
}
export type WebhookDelivery_status = (typeof WebhookDelivery_statusObject)[keyof typeof WebhookDelivery_statusObject];
export type WebhookDelivery_statusCode = number | WebhookDelivery_statusCodeMember1;
export interface WebhookDelivery_statusCodeMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * A webhook endpoint (no secret material).
 */
export interface WebhookEndpoint extends Parsable {
    /**
     * Creation epoch ms.
     */
    createdAt?: number | null;
    /**
     * Subscribed event tokens.
     */
    events?: string[] | null;
    /**
     * Consecutive dead-lettered deliveries (auto-disables at 50).
     */
    failureCount?: number | null;
    /**
     * Webhook endpoint id.
     */
    id?: string | null;
    /**
     * Whether the endpoint receives deliveries.
     */
    isActive?: boolean | null;
    /**
     * Human label, or null.
     */
    label?: string | WebhookEndpoint_labelMember1 | null;
    /**
     * Epoch ms of the last successful delivery, or null.
     */
    lastDeliveredAt?: number | WebhookEndpoint_lastDeliveredAtMember1 | null;
    /**
     * Epoch ms of the last failed delivery, or null.
     */
    lastFailedAt?: number | WebhookEndpoint_lastFailedAtMember1 | null;
    /**
     * Stringified bound scope id.
     */
    scopeId?: string | null;
    /**
     * The single scope dimension an endpoint is bound to.
     */
    scopeType?: WebhookEndpoint_scopeType | null;
    /**
     * First 8 chars of the current signing secret (display only).
     */
    secretPrefix?: string | null;
    /**
     * Last update epoch ms.
     */
    updatedAt?: number | null;
    /**
     * Delivery URL.
     */
    url?: string | null;
}
export type WebhookEndpoint_label = string | WebhookEndpoint_labelMember1;
export interface WebhookEndpoint_labelMember1 extends AdditionalDataHolder, Parsable {
}
export type WebhookEndpoint_lastDeliveredAt = number | WebhookEndpoint_lastDeliveredAtMember1;
export interface WebhookEndpoint_lastDeliveredAtMember1 extends AdditionalDataHolder, Parsable {
}
export type WebhookEndpoint_lastFailedAt = number | WebhookEndpoint_lastFailedAtMember1;
export interface WebhookEndpoint_lastFailedAtMember1 extends AdditionalDataHolder, Parsable {
}
export type WebhookEndpoint_scopeType = (typeof WebhookEndpoint_scopeTypeObject)[keyof typeof WebhookEndpoint_scopeTypeObject];
/**
 * List of the caller's webhook endpoints.
 */
export interface WebhookListResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
    /**
     * The webhooks property
     */
    webhooks?: WebhookEndpoint[] | null;
}
/**
 * Success ack.
 */
export interface WebhookOk extends Parsable {
    /**
     * The ok property
     */
    ok?: boolean | null;
}
/**
 * Replay re-queue acknowledgement.
 */
export interface WebhookReplayResult extends Parsable {
    /**
     * The ok property
     */
    ok?: boolean | null;
}
/**
 * One-time signing-secret reveal (create/rotate).
 */
export interface WebhookSecret extends Parsable {
    /**
     * The endpoint id the secret belongs to.
     */
    id?: string | null;
    /**
     * First 8 chars of the new signing secret.
     */
    secretPrefix?: string | null;
    /**
     * Plaintext signing secret. Shown ONCE - store it now.
     */
    signingSecret?: string | null;
}
/**
 * Outcome of a single test.ping delivery.
 */
export interface WebhookTestResult extends Parsable {
    /**
     * Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
     */
    delivered?: boolean | null;
}
/**
 * Optional map preference mode for selected maps.
 */
export declare const AcceptMatchRequestBody_mapPreferenceModeObject: {
    readonly PREFERRED: "PREFERRED";
    readonly VETO: "VETO";
};
/**
 * Assignable league staff role. OWNER cannot be assigned through this API.
 */
export declare const AddLeagueMemberRequestBody_roleObject: {
    readonly ADMIN: "ADMIN";
    readonly MANAGER: "MANAGER";
    readonly MEMBER: "MEMBER";
};
/**
 * Origin of the rank: manual entry or an API push.
 */
export declare const ApiGameRank_sourceObject: {
    readonly Manual: "manual";
    readonly Api: "api";
};
export declare const ApiMatchPlayer_attendanceStatusObject: {
    readonly ATTENDING: "ATTENDING";
    readonly NOT_ATTENDING: "NOT_ATTENDING";
    readonly TENTATIVE: "TENTATIVE";
};
export declare const ApiMatchPlayer_rosterTypeObject: {
    readonly ACTIVE: "ACTIVE";
    readonly BENCH: "BENCH";
};
/**
 * Canvas layer the shape renders on.
 */
export declare const ApiStrategyShape_layerObject: {
    readonly Drawing: "drawing";
    readonly Tokens: "tokens";
};
/**
 * Shape primitive type.
 */
export declare const ApiStrategyShape_typeObject: {
    readonly Ink: "ink";
    readonly Line: "line";
    readonly Arrow: "arrow";
    readonly Rect: "rect";
    readonly Ellipse: "ellipse";
    readonly Polygon: "polygon";
    readonly Text: "text";
    readonly Token: "token";
    readonly Image: "image";
};
/**
 * Filter bans by computed status. Defaults to all.
 */
export declare const BansRequestBody_statusObject: {
    readonly Active: "active";
    readonly Expired: "expired";
    readonly Revoked: "revoked";
    readonly All: "all";
};
export declare const CreateLeagueTicketRequestBody_priorityObject: {
    readonly Low: "low";
    readonly Medium: "medium";
    readonly High: "high";
    readonly Urgent: "urgent";
};
/**
 * Input device (defaults to ALL).
 */
export declare const CreateMatchRequestBody_inputDeviceObject: {
    readonly ALL: "ALL";
    readonly CONTROLLER: "CONTROLLER";
    readonly KB_M: "KB_M";
};
/**
 * Map preference mode.
 */
export declare const CreateMatchRequestBody_mapPreferenceModeObject: {
    readonly PREFERRED: "PREFERRED";
    readonly VETO: "VETO";
    readonly MANUAL: "MANUAL";
};
/**
 * Map selection type.
 */
export declare const CreateMatchRequestBody_mapSelectionTypeObject: {
    readonly COMPETITIVE: "COMPETITIVE";
    readonly FLEX: "FLEX";
};
/**
 * Match type.
 */
export declare const CreateMatchRequestBody_matchTypeObject: {
    readonly XP_ONLY: "XP_ONLY";
    readonly WAGER: "WAGER";
};
/**
 * Platform (defaults to CROSSPLAY).
 */
export declare const CreateMatchRequestBody_platformObject: {
    readonly PC: "PC";
    readonly XBOX: "XBOX";
    readonly PLAYSTATION: "PLAYSTATION";
    readonly CONSOLE_ONLY: "CONSOLE_ONLY";
    readonly CROSSPLAY: "CROSSPLAY";
};
/**
 * Publish status (defaults to DRAFT).
 */
export declare const CreateMatchRequestBody_publishStatusObject: {
    readonly DRAFT: "DRAFT";
    readonly PUBLISHED: "PUBLISHED";
    readonly ARCHIVED: "ARCHIVED";
};
/**
 * Region (defaults to NONE).
 */
export declare const CreateMatchRequestBody_regionObject: {
    readonly NONE: "NONE";
    readonly NA_EAST: "NA_EAST";
    readonly NA_WEST: "NA_WEST";
    readonly EU: "EU";
    readonly ASIA: "ASIA";
    readonly OCEANIA: "OCEANIA";
    readonly SOUTH_AMERICA: "SOUTH_AMERICA";
    readonly MIDDLE_EAST: "MIDDLE_EAST";
    readonly AFRICA: "AFRICA";
};
/**
 * Penalty type.
 */
export declare const CreatePenaltyRequestBody_typeObject: {
    readonly POINT_DEDUCTION: "POINT_DEDUCTION";
    readonly MATCH_FORFEIT: "MATCH_FORFEIT";
    readonly WARNING: "WARNING";
};
/**
 * Support category. Entity-bound and staff-only categories are rejected.
 */
export declare const CreateTicketRequestBody_categoryObject: {
    readonly Account: "account";
    readonly Technical_bug: "technical_bug";
    readonly Feature_request: "feature_request";
    readonly Billing: "billing";
    readonly Other: "other";
};
/**
 * Allowed input device (e.g. ALL).
 */
export declare const GameCreateMatchBody_inputDeviceObject: {
    readonly ALL: "ALL";
    readonly CONTROLLER: "CONTROLLER";
    readonly KB_M: "KB_M";
};
/**
 * Map preference mode (PREFERRED, VETO, or MANUAL).
 */
export declare const GameCreateMatchBody_mapPreferenceModeObject: {
    readonly PREFERRED: "PREFERRED";
    readonly VETO: "VETO";
    readonly MANUAL: "MANUAL";
};
/**
 * Map selection type (COMPETITIVE or FLEX).
 */
export declare const GameCreateMatchBody_mapSelectionTypeObject: {
    readonly COMPETITIVE: "COMPETITIVE";
    readonly FLEX: "FLEX";
};
/**
 * Match platform (e.g. CROSSPLAY).
 */
export declare const GameCreateMatchBody_platformObject: {
    readonly PC: "PC";
    readonly XBOX: "XBOX";
    readonly PLAYSTATION: "PLAYSTATION";
    readonly CONSOLE_ONLY: "CONSOLE_ONLY";
    readonly CROSSPLAY: "CROSSPLAY";
};
/**
 * Match region (e.g. NONE).
 */
export declare const GameCreateMatchBody_regionObject: {
    readonly NONE: "NONE";
    readonly NA_EAST: "NA_EAST";
    readonly NA_WEST: "NA_WEST";
    readonly EU: "EU";
    readonly ASIA: "ASIA";
    readonly OCEANIA: "OCEANIA";
    readonly SOUTH_AMERICA: "SOUTH_AMERICA";
    readonly MIDDLE_EAST: "MIDDLE_EAST";
    readonly AFRICA: "AFRICA";
};
/**
 * Game definition ID to set the rank for (a playable game).
 */
export declare const GameRankUpsertBody_gameIdObject: {
    readonly Call_of_duty_black_ops_7: "call_of_duty_black_ops_7";
    readonly Valorant: "valorant";
    readonly League_of_legends: "league_of_legends";
    readonly Counter_strike_2: "counter_strike_2";
};
/**
 * Supported leaderboard sort field.
 */
export declare const LeaderboardSortByObject: {
    readonly Wins: "wins";
    readonly WinRate: "winRate";
    readonly Experience: "experience";
};
/**
 * Aggregate season state across the league's games.
 */
export declare const LeagueSummary_seasonStatusObject: {
    readonly Active: "active";
    readonly Upcoming: "upcoming";
    readonly None: "none";
};
export declare const MatchDiscoverBody_matchTypeObject: {
    readonly XP_ONLY: "XP_ONLY";
    readonly WAGER: "WAGER";
};
export declare const MatchDiscoverBody_platformObject: {
    readonly PC: "PC";
    readonly XBOX: "XBOX";
    readonly PLAYSTATION: "PLAYSTATION";
    readonly CONSOLE_ONLY: "CONSOLE_ONLY";
    readonly CROSSPLAY: "CROSSPLAY";
};
export declare const MatchDiscoverBody_regionObject: {
    readonly NONE: "NONE";
    readonly NA_EAST: "NA_EAST";
    readonly NA_WEST: "NA_WEST";
    readonly EU: "EU";
    readonly ASIA: "ASIA";
    readonly OCEANIA: "OCEANIA";
    readonly SOUTH_AMERICA: "SOUTH_AMERICA";
    readonly MIDDLE_EAST: "MIDDLE_EAST";
    readonly AFRICA: "AFRICA";
};
/**
 * Lifecycle status of a match.
 */
export declare const MatchStatusObject: {
    readonly PENDING: "PENDING";
    readonly ACCEPTED: "ACCEPTED";
    readonly READY: "READY";
    readonly IN_PROGRESS: "IN_PROGRESS";
    readonly COMPLETED: "COMPLETED";
    readonly CANCELLED: "CANCELLED";
    readonly DISPUTED: "DISPUTED";
    readonly FORFEITED: "FORFEITED";
};
/**
 * Which record kinds to return. Defaults to all.
 */
export declare const PenaltiesRequestBody_typeObject: {
    readonly Penalties: "penalties";
    readonly Cooldowns: "cooldowns";
    readonly All: "all";
};
/**
 * Public profile visibility setting.
 */
export declare const ProfileVisibilityObject: {
    readonly Public: "public";
    readonly Limited: "limited";
    readonly Private: "private";
};
/**
 * Filter seasons by lifecycle status.
 */
export declare const SeasonsRequestBody_statusObject: {
    readonly UPCOMING: "UPCOMING";
    readonly ACTIVE: "ACTIVE";
    readonly COMPLETED: "COMPLETED";
};
/**
 * Strategy share visibility setting.
 */
export declare const StrategyVisibilityObject: {
    readonly Private: "private";
    readonly Unlisted: "unlisted";
    readonly Public: "public";
};
/**
 * Supported streaming platform.
 */
export declare const StreamPlatformObject: {
    readonly TWITCH: "TWITCH";
    readonly YOUTUBE: "YOUTUBE";
    readonly KICK: "KICK";
};
export declare const TicketDetail_priorityObject: {
    readonly Low: "low";
    readonly Medium: "medium";
    readonly High: "high";
    readonly Urgent: "urgent";
};
export declare const TicketDetail_statusObject: {
    readonly Open: "open";
    readonly In_progress: "in_progress";
    readonly Awaiting_response: "awaiting_response";
    readonly Resolved: "resolved";
    readonly Closed: "closed";
};
export declare const TicketSummary_priorityObject: {
    readonly Low: "low";
    readonly Medium: "medium";
    readonly High: "high";
    readonly Urgent: "urgent";
};
export declare const TicketSummary_statusObject: {
    readonly Open: "open";
    readonly In_progress: "in_progress";
    readonly Awaiting_response: "awaiting_response";
    readonly Resolved: "resolved";
    readonly Closed: "closed";
};
/**
 * The API key owner's attendance status for this match.
 */
export declare const UpdateAttendanceRequestBody_statusObject: {
    readonly ATTENDING: "ATTENDING";
    readonly NOT_ATTENDING: "NOT_ATTENDING";
    readonly TENTATIVE: "TENTATIVE";
};
export declare const UpdateGameRulesRequestBody_matchFormatObject: {
    readonly BEST_OF_1: "BEST_OF_1";
    readonly BEST_OF_3: "BEST_OF_3";
    readonly BEST_OF_5: "BEST_OF_5";
    readonly BEST_OF_7: "BEST_OF_7";
    readonly BEST_OF_9: "BEST_OF_9";
};
/**
 * Assignable league staff role. OWNER cannot be assigned through this API.
 */
export declare const UpdateLeagueMemberRoleRequestBody_roleObject: {
    readonly ADMIN: "ADMIN";
    readonly MANAGER: "MANAGER";
    readonly MEMBER: "MEMBER";
};
export declare const UpdateLeagueTicketRequestBody_priorityObject: {
    readonly Low: "low";
    readonly Medium: "medium";
    readonly High: "high";
    readonly Urgent: "urgent";
};
export declare const UpdateLeagueTicketRequestBody_statusObject: {
    readonly Open: "open";
    readonly In_progress: "in_progress";
    readonly Awaiting_response: "awaiting_response";
    readonly Resolved: "resolved";
    readonly Closed: "closed";
};
export declare const UpdatePointsConfigRequestBody_unitLabelObject: {
    readonly POINTS: "POINTS";
    readonly EXPERIENCE: "EXPERIENCE";
};
/**
 * Lifecycle status of one logical delivery (endpoint x idempotency id).
 */
export declare const WebhookDelivery_statusObject: {
    readonly Pending: "pending";
    readonly Delivering: "delivering";
    readonly Delivered: "delivered";
    readonly Failed: "failed";
    readonly Dead_lettered: "dead_lettered";
};
/**
 * The single scope dimension an endpoint is bound to.
 */
export declare const WebhookEndpoint_scopeTypeObject: {
    readonly Game: "game";
    readonly League: "league";
    readonly Org: "org";
    readonly Team: "team";
    readonly User: "user";
};
//# sourceMappingURL=index.d.ts.map