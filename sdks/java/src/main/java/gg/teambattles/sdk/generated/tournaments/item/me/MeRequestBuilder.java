package gg.teambattles.sdk.generated.tournaments.item.me;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.MyTournamentEntryResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/me
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MeRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link MeRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MeRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/me", pathParameters);
    }
    /**
     * Instantiates a new {@link MeRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MeRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/me", rawUrl);
    }
    /**
     * Returns the API key owner&apos;s own state in one tournament, resolved by slug: the teams they may act for, their teams&apos; entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host&apos;s plan - a competitor&apos;s integration never depends on the organizer&apos;s billing.
     * @return a {@link MyTournamentEntryResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public MyTournamentEntryResponse get() {
        return get(null);
    }
    /**
     * Returns the API key owner&apos;s own state in one tournament, resolved by slug: the teams they may act for, their teams&apos; entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host&apos;s plan - a competitor&apos;s integration never depends on the organizer&apos;s billing.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link MyTournamentEntryResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public MyTournamentEntryResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, MyTournamentEntryResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns the API key owner&apos;s own state in one tournament, resolved by slug: the teams they may act for, their teams&apos; entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host&apos;s plan - a competitor&apos;s integration never depends on the organizer&apos;s billing.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns the API key owner&apos;s own state in one tournament, resolved by slug: the teams they may act for, their teams&apos; entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host&apos;s plan - a competitor&apos;s integration never depends on the organizer&apos;s billing.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link MeRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MeRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new MeRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}
