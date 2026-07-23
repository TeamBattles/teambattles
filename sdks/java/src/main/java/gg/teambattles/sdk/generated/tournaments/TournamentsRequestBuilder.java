package gg.teambattles.sdk.generated.tournaments;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentCreateRequestBody;
import gg.teambattles.sdk.generated.models.TournamentCreateResponse;
import gg.teambattles.sdk.generated.tournaments.discover.DiscoverRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.WithIdentifierItemRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentsRequestBuilder extends BaseRequestBuilder {
    /**
     * The discover property
     * @return a {@link DiscoverRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DiscoverRequestBuilder discover() {
        return new DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item collection
     * @param identifier Tournament slug.
     * @return a {@link WithIdentifierItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithIdentifierItemRequestBuilder byIdentifier(@jakarta.annotation.Nonnull final String identifier) {
        Objects.requireNonNull(identifier);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("identifier", identifier);
        return new WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link TournamentsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TournamentsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments", pathParameters);
    }
    /**
     * Instantiates a new {@link TournamentsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TournamentsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments", rawUrl);
    }
    /**
     * Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person&apos;s developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
     * @param body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
     * @return a {@link TournamentCreateResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentCreateResponse post(@jakarta.annotation.Nonnull final TournamentCreateRequestBody body) {
        return post(body, null);
    }
    /**
     * Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person&apos;s developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
     * @param body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentCreateResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentCreateResponse post(@jakarta.annotation.Nonnull final TournamentCreateRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("409", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentCreateResponse::createFromDiscriminatorValue);
    }
    /**
     * Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person&apos;s developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
     * @param body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentCreateRequestBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person&apos;s developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
     * @param body A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentCreateRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link TournamentsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TournamentsRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new TournamentsRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
