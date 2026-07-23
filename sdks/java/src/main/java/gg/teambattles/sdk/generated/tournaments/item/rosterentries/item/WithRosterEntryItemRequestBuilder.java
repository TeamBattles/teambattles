package gg.teambattles.sdk.generated.tournaments.item.rosterentries.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/roster-entries/{rosterEntryId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithRosterEntryItemRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link WithRosterEntryItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithRosterEntryItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries/{rosterEntryId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithRosterEntryItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithRosterEntryItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries/{rosterEntryId}", rawUrl);
    }
    /**
     * Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck delete() {
        return delete(null);
    }
    /**
     * Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck delete(@jakarta.annotation.Nullable final java.util.function.Consumer<DeleteRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toDeleteRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentWriteAck::createFromDiscriminatorValue);
    }
    /**
     * Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toDeleteRequestInformation() {
        return toDeleteRequestInformation(null);
    }
    /**
     * Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toDeleteRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<DeleteRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.DELETE, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, DeleteRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link WithRosterEntryItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithRosterEntryItemRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new WithRosterEntryItemRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class DeleteRequestConfiguration extends BaseRequestConfiguration {
    }
}
