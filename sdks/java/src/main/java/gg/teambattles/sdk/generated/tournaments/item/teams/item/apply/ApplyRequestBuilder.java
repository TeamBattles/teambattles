package gg.teambattles.sdk.generated.tournaments.item.teams.item.apply;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentTeamEntryBody;
import gg.teambattles.sdk.generated.models.TournamentTeamEntryResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}/apply
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApplyRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ApplyRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ApplyRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/apply", pathParameters);
    }
    /**
     * Instantiates a new {@link ApplyRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ApplyRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/apply", rawUrl);
    }
    /**
     * Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament&apos;s teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
     * @param body Tournament entry payload for a team the caller leads.
     * @return a {@link TournamentTeamEntryResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentTeamEntryResponse post(@jakarta.annotation.Nonnull final TournamentTeamEntryBody body) {
        return post(body, null);
    }
    /**
     * Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament&apos;s teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
     * @param body Tournament entry payload for a team the caller leads.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentTeamEntryResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentTeamEntryResponse post(@jakarta.annotation.Nonnull final TournamentTeamEntryBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("409", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentTeamEntryResponse::createFromDiscriminatorValue);
    }
    /**
     * Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament&apos;s teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
     * @param body Tournament entry payload for a team the caller leads.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentTeamEntryBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament&apos;s teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
     * @param body Tournament entry payload for a team the caller leads.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentTeamEntryBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link ApplyRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ApplyRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ApplyRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
