<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
*/
class TournamentCreateRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $bannerStorageId Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    */
    private ?string $bannerStorageId = null;
    
    /**
     * @var int|null $checkInOpensMinutesBefore The checkInOpensMinutesBefore property
    */
    private ?int $checkInOpensMinutesBefore = null;
    
    /**
     * @var bool|null $checkInRequired The checkInRequired property
    */
    private ?bool $checkInRequired = null;
    
    /**
     * @var TournamentDefaultMatchConfig|null $defaultMatchConfig Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
    */
    private ?TournamentDefaultMatchConfig $defaultMatchConfig = null;
    
    /**
     * @var string|null $description The description property
    */
    private ?string $description = null;
    
    /**
     * @var int|null $endsAt Unix ms.
    */
    private ?int $endsAt = null;
    
    /**
     * @var TournamentFormat|null $format Bracket format of a tournament.
    */
    private ?TournamentFormat $format = null;
    
    /**
     * @var TournamentFormatConfig|null $formatConfig Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
    */
    private ?TournamentFormatConfig $formatConfig = null;
    
    /**
     * @var bool|null $freeAgentsEnabled Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
    */
    private ?bool $freeAgentsEnabled = null;
    
    /**
     * @var string|null $gameId Convex game id.
    */
    private ?string $gameId = null;
    
    /**
     * @var string|null $hostId Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
    */
    private ?string $hostId = null;
    
    /**
     * @var TournamentCreateRequestBody_hostType|null $hostType Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
    */
    private ?TournamentCreateRequestBody_hostType $hostType = null;
    
    /**
     * @var array<TournamentPlacementPointsEntry>|null $leaguePointsByPlacement LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
    */
    private ?array $leaguePointsByPlacement = null;
    
    /**
     * @var bool|null $leaguePointsEnabled LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
    */
    private ?bool $leaguePointsEnabled = null;
    
    /**
     * @var string|null $logoStorageId Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
    */
    private ?string $logoStorageId = null;
    
    /**
     * @var int|null $maxParticipants Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
    */
    private ?int $maxParticipants = null;
    
    /**
     * @var int|null $minParticipants The minParticipants property
    */
    private ?int $minParticipants = null;
    
    /**
     * @var string|null $name Tournament name, 3-80 characters after trimming.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $playlistId Convex game playlist id.
    */
    private ?string $playlistId = null;
    
    /**
     * @var array<TournamentPrizeBreakdownEntry>|null $prizeBreakdown The prizeBreakdown property
    */
    private ?array $prizeBreakdown = null;
    
    /**
     * @var string|null $prizeCurrency The prizeCurrency property
    */
    private ?string $prizeCurrency = null;
    
    /**
     * @var string|null $prizeDescription The prizeDescription property
    */
    private ?string $prizeDescription = null;
    
    /**
     * @var float|null $prizePool The prizePool property
    */
    private ?float $prizePool = null;
    
    /**
     * @var int|null $registrationEndsAt Unix ms.
    */
    private ?int $registrationEndsAt = null;
    
    /**
     * @var TournamentCreateRequestBody_registrationMode|null $registrationMode The registrationMode property
    */
    private ?TournamentCreateRequestBody_registrationMode $registrationMode = null;
    
    /**
     * @var int|null $registrationStartsAt Unix ms.
    */
    private ?int $registrationStartsAt = null;
    
    /**
     * @var string|null $rules The rules property
    */
    private ?string $rules = null;
    
    /**
     * @var TournamentCreateRequestBody_seedingMethod|null $seedingMethod Defaults to the platform default when omitted. NOT editable afterwards.
    */
    private ?TournamentCreateRequestBody_seedingMethod $seedingMethod = null;
    
    /**
     * @var TournamentSocialLinks|null $socialLinks Organizer social links.
    */
    private ?TournamentSocialLinks $socialLinks = null;
    
    /**
     * @var array<TournamentSponsorTag>|null $sponsorTags Bounded by the host plan's sponsor-tag limit.
    */
    private ?array $sponsorTags = null;
    
    /**
     * @var int|null $startsAt Unix ms.
    */
    private ?int $startsAt = null;
    
    /**
     * @var int|null $teamSize Players per side.
    */
    private ?int $teamSize = null;
    
    /**
     * @var TournamentCreateRequestBody_visibility|null $visibility The visibility property
    */
    private ?TournamentCreateRequestBody_visibility $visibility = null;
    
    /**
     * Instantiates a new TournamentCreateRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentCreateRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentCreateRequestBody {
        return new TournamentCreateRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the bannerStorageId property value. Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @return string|null
    */
    public function getBannerStorageId(): ?string {
        return $this->bannerStorageId;
    }

    /**
     * Gets the checkInOpensMinutesBefore property value. The checkInOpensMinutesBefore property
     * @return int|null
    */
    public function getCheckInOpensMinutesBefore(): ?int {
        return $this->checkInOpensMinutesBefore;
    }

    /**
     * Gets the checkInRequired property value. The checkInRequired property
     * @return bool|null
    */
    public function getCheckInRequired(): ?bool {
        return $this->checkInRequired;
    }

    /**
     * Gets the defaultMatchConfig property value. Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
     * @return TournamentDefaultMatchConfig|null
    */
    public function getDefaultMatchConfig(): ?TournamentDefaultMatchConfig {
        return $this->defaultMatchConfig;
    }

    /**
     * Gets the description property value. The description property
     * @return string|null
    */
    public function getDescription(): ?string {
        return $this->description;
    }

    /**
     * Gets the endsAt property value. Unix ms.
     * @return int|null
    */
    public function getEndsAt(): ?int {
        return $this->endsAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'bannerStorageId' => fn(ParseNode $n) => $o->setBannerStorageId($n->getStringValue()),
            'checkInOpensMinutesBefore' => fn(ParseNode $n) => $o->setCheckInOpensMinutesBefore($n->getIntegerValue()),
            'checkInRequired' => fn(ParseNode $n) => $o->setCheckInRequired($n->getBooleanValue()),
            'defaultMatchConfig' => fn(ParseNode $n) => $o->setDefaultMatchConfig($n->getObjectValue([TournamentDefaultMatchConfig::class, 'createFromDiscriminatorValue'])),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'endsAt' => fn(ParseNode $n) => $o->setEndsAt($n->getIntegerValue()),
            'format' => fn(ParseNode $n) => $o->setFormat($n->getEnumValue(TournamentFormat::class)),
            'formatConfig' => fn(ParseNode $n) => $o->setFormatConfig($n->getObjectValue([TournamentFormatConfig::class, 'createFromDiscriminatorValue'])),
            'freeAgentsEnabled' => fn(ParseNode $n) => $o->setFreeAgentsEnabled($n->getBooleanValue()),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'hostId' => fn(ParseNode $n) => $o->setHostId($n->getStringValue()),
            'hostType' => fn(ParseNode $n) => $o->setHostType($n->getEnumValue(TournamentCreateRequestBody_hostType::class)),
            'leaguePointsByPlacement' => fn(ParseNode $n) => $o->setLeaguePointsByPlacement($n->getCollectionOfObjectValues([TournamentPlacementPointsEntry::class, 'createFromDiscriminatorValue'])),
            'leaguePointsEnabled' => fn(ParseNode $n) => $o->setLeaguePointsEnabled($n->getBooleanValue()),
            'logoStorageId' => fn(ParseNode $n) => $o->setLogoStorageId($n->getStringValue()),
            'maxParticipants' => fn(ParseNode $n) => $o->setMaxParticipants($n->getIntegerValue()),
            'minParticipants' => fn(ParseNode $n) => $o->setMinParticipants($n->getIntegerValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'playlistId' => fn(ParseNode $n) => $o->setPlaylistId($n->getStringValue()),
            'prizeBreakdown' => fn(ParseNode $n) => $o->setPrizeBreakdown($n->getCollectionOfObjectValues([TournamentPrizeBreakdownEntry::class, 'createFromDiscriminatorValue'])),
            'prizeCurrency' => fn(ParseNode $n) => $o->setPrizeCurrency($n->getStringValue()),
            'prizeDescription' => fn(ParseNode $n) => $o->setPrizeDescription($n->getStringValue()),
            'prizePool' => fn(ParseNode $n) => $o->setPrizePool($n->getFloatValue()),
            'registrationEndsAt' => fn(ParseNode $n) => $o->setRegistrationEndsAt($n->getIntegerValue()),
            'registrationMode' => fn(ParseNode $n) => $o->setRegistrationMode($n->getEnumValue(TournamentCreateRequestBody_registrationMode::class)),
            'registrationStartsAt' => fn(ParseNode $n) => $o->setRegistrationStartsAt($n->getIntegerValue()),
            'rules' => fn(ParseNode $n) => $o->setRules($n->getStringValue()),
            'seedingMethod' => fn(ParseNode $n) => $o->setSeedingMethod($n->getEnumValue(TournamentCreateRequestBody_seedingMethod::class)),
            'socialLinks' => fn(ParseNode $n) => $o->setSocialLinks($n->getObjectValue([TournamentSocialLinks::class, 'createFromDiscriminatorValue'])),
            'sponsorTags' => fn(ParseNode $n) => $o->setSponsorTags($n->getCollectionOfObjectValues([TournamentSponsorTag::class, 'createFromDiscriminatorValue'])),
            'startsAt' => fn(ParseNode $n) => $o->setStartsAt($n->getIntegerValue()),
            'teamSize' => fn(ParseNode $n) => $o->setTeamSize($n->getIntegerValue()),
            'visibility' => fn(ParseNode $n) => $o->setVisibility($n->getEnumValue(TournamentCreateRequestBody_visibility::class)),
        ];
    }

    /**
     * Gets the format property value. Bracket format of a tournament.
     * @return TournamentFormat|null
    */
    public function getFormat(): ?TournamentFormat {
        return $this->format;
    }

    /**
     * Gets the formatConfig property value. Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
     * @return TournamentFormatConfig|null
    */
    public function getFormatConfig(): ?TournamentFormatConfig {
        return $this->formatConfig;
    }

    /**
     * Gets the freeAgentsEnabled property value. Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
     * @return bool|null
    */
    public function getFreeAgentsEnabled(): ?bool {
        return $this->freeAgentsEnabled;
    }

    /**
     * Gets the gameId property value. Convex game id.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the hostId property value. Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
     * @return string|null
    */
    public function getHostId(): ?string {
        return $this->hostId;
    }

    /**
     * Gets the hostType property value. Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
     * @return TournamentCreateRequestBody_hostType|null
    */
    public function getHostType(): ?TournamentCreateRequestBody_hostType {
        return $this->hostType;
    }

    /**
     * Gets the leaguePointsByPlacement property value. LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
     * @return array<TournamentPlacementPointsEntry>|null
    */
    public function getLeaguePointsByPlacement(): ?array {
        return $this->leaguePointsByPlacement;
    }

    /**
     * Gets the leaguePointsEnabled property value. LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
     * @return bool|null
    */
    public function getLeaguePointsEnabled(): ?bool {
        return $this->leaguePointsEnabled;
    }

    /**
     * Gets the logoStorageId property value. Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @return string|null
    */
    public function getLogoStorageId(): ?string {
        return $this->logoStorageId;
    }

    /**
     * Gets the maxParticipants property value. Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
     * @return int|null
    */
    public function getMaxParticipants(): ?int {
        return $this->maxParticipants;
    }

    /**
     * Gets the minParticipants property value. The minParticipants property
     * @return int|null
    */
    public function getMinParticipants(): ?int {
        return $this->minParticipants;
    }

    /**
     * Gets the name property value. Tournament name, 3-80 characters after trimming.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the playlistId property value. Convex game playlist id.
     * @return string|null
    */
    public function getPlaylistId(): ?string {
        return $this->playlistId;
    }

    /**
     * Gets the prizeBreakdown property value. The prizeBreakdown property
     * @return array<TournamentPrizeBreakdownEntry>|null
    */
    public function getPrizeBreakdown(): ?array {
        return $this->prizeBreakdown;
    }

    /**
     * Gets the prizeCurrency property value. The prizeCurrency property
     * @return string|null
    */
    public function getPrizeCurrency(): ?string {
        return $this->prizeCurrency;
    }

    /**
     * Gets the prizeDescription property value. The prizeDescription property
     * @return string|null
    */
    public function getPrizeDescription(): ?string {
        return $this->prizeDescription;
    }

    /**
     * Gets the prizePool property value. The prizePool property
     * @return float|null
    */
    public function getPrizePool(): ?float {
        return $this->prizePool;
    }

    /**
     * Gets the registrationEndsAt property value. Unix ms.
     * @return int|null
    */
    public function getRegistrationEndsAt(): ?int {
        return $this->registrationEndsAt;
    }

    /**
     * Gets the registrationMode property value. The registrationMode property
     * @return TournamentCreateRequestBody_registrationMode|null
    */
    public function getRegistrationMode(): ?TournamentCreateRequestBody_registrationMode {
        return $this->registrationMode;
    }

    /**
     * Gets the registrationStartsAt property value. Unix ms.
     * @return int|null
    */
    public function getRegistrationStartsAt(): ?int {
        return $this->registrationStartsAt;
    }

    /**
     * Gets the rules property value. The rules property
     * @return string|null
    */
    public function getRules(): ?string {
        return $this->rules;
    }

    /**
     * Gets the seedingMethod property value. Defaults to the platform default when omitted. NOT editable afterwards.
     * @return TournamentCreateRequestBody_seedingMethod|null
    */
    public function getSeedingMethod(): ?TournamentCreateRequestBody_seedingMethod {
        return $this->seedingMethod;
    }

    /**
     * Gets the socialLinks property value. Organizer social links.
     * @return TournamentSocialLinks|null
    */
    public function getSocialLinks(): ?TournamentSocialLinks {
        return $this->socialLinks;
    }

    /**
     * Gets the sponsorTags property value. Bounded by the host plan's sponsor-tag limit.
     * @return array<TournamentSponsorTag>|null
    */
    public function getSponsorTags(): ?array {
        return $this->sponsorTags;
    }

    /**
     * Gets the startsAt property value. Unix ms.
     * @return int|null
    */
    public function getStartsAt(): ?int {
        return $this->startsAt;
    }

    /**
     * Gets the teamSize property value. Players per side.
     * @return int|null
    */
    public function getTeamSize(): ?int {
        return $this->teamSize;
    }

    /**
     * Gets the visibility property value. The visibility property
     * @return TournamentCreateRequestBody_visibility|null
    */
    public function getVisibility(): ?TournamentCreateRequestBody_visibility {
        return $this->visibility;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('bannerStorageId', $this->getBannerStorageId());
        $writer->writeIntegerValue('checkInOpensMinutesBefore', $this->getCheckInOpensMinutesBefore());
        $writer->writeBooleanValue('checkInRequired', $this->getCheckInRequired());
        $writer->writeObjectValue('defaultMatchConfig', $this->getDefaultMatchConfig());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeIntegerValue('endsAt', $this->getEndsAt());
        $writer->writeEnumValue('format', $this->getFormat());
        $writer->writeObjectValue('formatConfig', $this->getFormatConfig());
        $writer->writeBooleanValue('freeAgentsEnabled', $this->getFreeAgentsEnabled());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeStringValue('hostId', $this->getHostId());
        $writer->writeEnumValue('hostType', $this->getHostType());
        $writer->writeCollectionOfObjectValues('leaguePointsByPlacement', $this->getLeaguePointsByPlacement());
        $writer->writeBooleanValue('leaguePointsEnabled', $this->getLeaguePointsEnabled());
        $writer->writeStringValue('logoStorageId', $this->getLogoStorageId());
        $writer->writeIntegerValue('maxParticipants', $this->getMaxParticipants());
        $writer->writeIntegerValue('minParticipants', $this->getMinParticipants());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('playlistId', $this->getPlaylistId());
        $writer->writeCollectionOfObjectValues('prizeBreakdown', $this->getPrizeBreakdown());
        $writer->writeStringValue('prizeCurrency', $this->getPrizeCurrency());
        $writer->writeStringValue('prizeDescription', $this->getPrizeDescription());
        $writer->writeFloatValue('prizePool', $this->getPrizePool());
        $writer->writeIntegerValue('registrationEndsAt', $this->getRegistrationEndsAt());
        $writer->writeEnumValue('registrationMode', $this->getRegistrationMode());
        $writer->writeIntegerValue('registrationStartsAt', $this->getRegistrationStartsAt());
        $writer->writeStringValue('rules', $this->getRules());
        $writer->writeEnumValue('seedingMethod', $this->getSeedingMethod());
        $writer->writeObjectValue('socialLinks', $this->getSocialLinks());
        $writer->writeCollectionOfObjectValues('sponsorTags', $this->getSponsorTags());
        $writer->writeIntegerValue('startsAt', $this->getStartsAt());
        $writer->writeIntegerValue('teamSize', $this->getTeamSize());
        $writer->writeEnumValue('visibility', $this->getVisibility());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the bannerStorageId property value. Convex storage id from POST /uploads/image with slot=banner (max 2 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @param string|null $value Value to set for the bannerStorageId property.
    */
    public function setBannerStorageId(?string $value): void {
        $this->bannerStorageId = $value;
    }

    /**
     * Sets the checkInOpensMinutesBefore property value. The checkInOpensMinutesBefore property
     * @param int|null $value Value to set for the checkInOpensMinutesBefore property.
    */
    public function setCheckInOpensMinutesBefore(?int $value): void {
        $this->checkInOpensMinutesBefore = $value;
    }

    /**
     * Sets the checkInRequired property value. The checkInRequired property
     * @param bool|null $value Value to set for the checkInRequired property.
    */
    public function setCheckInRequired(?bool $value): void {
        $this->checkInRequired = $value;
    }

    /**
     * Sets the defaultMatchConfig property value. Match settings stamped onto every match this tournament generates. Required, and sent whole - there is no per-field default.
     * @param TournamentDefaultMatchConfig|null $value Value to set for the defaultMatchConfig property.
    */
    public function setDefaultMatchConfig(?TournamentDefaultMatchConfig $value): void {
        $this->defaultMatchConfig = $value;
    }

    /**
     * Sets the description property value. The description property
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the endsAt property value. Unix ms.
     * @param int|null $value Value to set for the endsAt property.
    */
    public function setEndsAt(?int $value): void {
        $this->endsAt = $value;
    }

    /**
     * Sets the format property value. Bracket format of a tournament.
     * @param TournamentFormat|null $value Value to set for the format property.
    */
    public function setFormat(?TournamentFormat $value): void {
        $this->format = $value;
    }

    /**
     * Sets the formatConfig property value. Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
     * @param TournamentFormatConfig|null $value Value to set for the formatConfig property.
    */
    public function setFormatConfig(?TournamentFormatConfig $value): void {
        $this->formatConfig = $value;
    }

    /**
     * Sets the freeAgentsEnabled property value. Whether unaffiliated players may join a free-agent pool. NOT editable afterwards through the update endpoint.
     * @param bool|null $value Value to set for the freeAgentsEnabled property.
    */
    public function setFreeAgentsEnabled(?bool $value): void {
        $this->freeAgentsEnabled = $value;
    }

    /**
     * Sets the gameId property value. Convex game id.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the hostId property value. Your own user id when hostType is `user`; the organization id when `org`; the league id when `league`. You must genuinely hold that authority - see the endpoint description.
     * @param string|null $value Value to set for the hostId property.
    */
    public function setHostId(?string $value): void {
        $this->hostId = $value;
    }

    /**
     * Sets the hostType property value. Who hosts the tournament. This choice, together with `hostId`, decides which plan is billed for every later organizer request on the tournament - see the endpoint description.
     * @param TournamentCreateRequestBody_hostType|null $value Value to set for the hostType property.
    */
    public function setHostType(?TournamentCreateRequestBody_hostType $value): void {
        $this->hostType = $value;
    }

    /**
     * Sets the leaguePointsByPlacement property value. LEAGUE HOSTS ONLY. Omit to use the platform default curve; an empty array is rejected.
     * @param array<TournamentPlacementPointsEntry>|null $value Value to set for the leaguePointsByPlacement property.
    */
    public function setLeaguePointsByPlacement(?array $value): void {
        $this->leaguePointsByPlacement = $value;
    }

    /**
     * Sets the leaguePointsEnabled property value. LEAGUE HOSTS ONLY. Sending it with a user or org host is a 400.
     * @param bool|null $value Value to set for the leaguePointsEnabled property.
    */
    public function setLeaguePointsEnabled(?bool $value): void {
        $this->leaguePointsEnabled = $value;
    }

    /**
     * Sets the logoStorageId property value. Convex storage id from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url carries no ownership record and is rejected with 400 error_image_blob_unbound.
     * @param string|null $value Value to set for the logoStorageId property.
    */
    public function setLogoStorageId(?string $value): void {
        $this->logoStorageId = $value;
    }

    /**
     * Sets the maxParticipants property value. Entrant cap. Also bounded by the format ceiling (SINGLE_ELIMINATION and DOUBLE_ELIMINATION 128, SWISS 64, ROUND_ROBIN 32) and by the host plan's participant limit, both checked server-side.
     * @param int|null $value Value to set for the maxParticipants property.
    */
    public function setMaxParticipants(?int $value): void {
        $this->maxParticipants = $value;
    }

    /**
     * Sets the minParticipants property value. The minParticipants property
     * @param int|null $value Value to set for the minParticipants property.
    */
    public function setMinParticipants(?int $value): void {
        $this->minParticipants = $value;
    }

    /**
     * Sets the name property value. Tournament name, 3-80 characters after trimming.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the playlistId property value. Convex game playlist id.
     * @param string|null $value Value to set for the playlistId property.
    */
    public function setPlaylistId(?string $value): void {
        $this->playlistId = $value;
    }

    /**
     * Sets the prizeBreakdown property value. The prizeBreakdown property
     * @param array<TournamentPrizeBreakdownEntry>|null $value Value to set for the prizeBreakdown property.
    */
    public function setPrizeBreakdown(?array $value): void {
        $this->prizeBreakdown = $value;
    }

    /**
     * Sets the prizeCurrency property value. The prizeCurrency property
     * @param string|null $value Value to set for the prizeCurrency property.
    */
    public function setPrizeCurrency(?string $value): void {
        $this->prizeCurrency = $value;
    }

    /**
     * Sets the prizeDescription property value. The prizeDescription property
     * @param string|null $value Value to set for the prizeDescription property.
    */
    public function setPrizeDescription(?string $value): void {
        $this->prizeDescription = $value;
    }

    /**
     * Sets the prizePool property value. The prizePool property
     * @param float|null $value Value to set for the prizePool property.
    */
    public function setPrizePool(?float $value): void {
        $this->prizePool = $value;
    }

    /**
     * Sets the registrationEndsAt property value. Unix ms.
     * @param int|null $value Value to set for the registrationEndsAt property.
    */
    public function setRegistrationEndsAt(?int $value): void {
        $this->registrationEndsAt = $value;
    }

    /**
     * Sets the registrationMode property value. The registrationMode property
     * @param TournamentCreateRequestBody_registrationMode|null $value Value to set for the registrationMode property.
    */
    public function setRegistrationMode(?TournamentCreateRequestBody_registrationMode $value): void {
        $this->registrationMode = $value;
    }

    /**
     * Sets the registrationStartsAt property value. Unix ms.
     * @param int|null $value Value to set for the registrationStartsAt property.
    */
    public function setRegistrationStartsAt(?int $value): void {
        $this->registrationStartsAt = $value;
    }

    /**
     * Sets the rules property value. The rules property
     * @param string|null $value Value to set for the rules property.
    */
    public function setRules(?string $value): void {
        $this->rules = $value;
    }

    /**
     * Sets the seedingMethod property value. Defaults to the platform default when omitted. NOT editable afterwards.
     * @param TournamentCreateRequestBody_seedingMethod|null $value Value to set for the seedingMethod property.
    */
    public function setSeedingMethod(?TournamentCreateRequestBody_seedingMethod $value): void {
        $this->seedingMethod = $value;
    }

    /**
     * Sets the socialLinks property value. Organizer social links.
     * @param TournamentSocialLinks|null $value Value to set for the socialLinks property.
    */
    public function setSocialLinks(?TournamentSocialLinks $value): void {
        $this->socialLinks = $value;
    }

    /**
     * Sets the sponsorTags property value. Bounded by the host plan's sponsor-tag limit.
     * @param array<TournamentSponsorTag>|null $value Value to set for the sponsorTags property.
    */
    public function setSponsorTags(?array $value): void {
        $this->sponsorTags = $value;
    }

    /**
     * Sets the startsAt property value. Unix ms.
     * @param int|null $value Value to set for the startsAt property.
    */
    public function setStartsAt(?int $value): void {
        $this->startsAt = $value;
    }

    /**
     * Sets the teamSize property value. Players per side.
     * @param int|null $value Value to set for the teamSize property.
    */
    public function setTeamSize(?int $value): void {
        $this->teamSize = $value;
    }

    /**
     * Sets the visibility property value. The visibility property
     * @param TournamentCreateRequestBody_visibility|null $value Value to set for the visibility property.
    */
    public function setVisibility(?TournamentCreateRequestBody_visibility $value): void {
        $this->visibility = $value;
    }

}
