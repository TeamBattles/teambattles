package gg.teambattles.sdk.generated.tournaments.item.rosterentries;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.rosterentries.item.WithRosterEntryItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/roster-entries
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RosterEntriesRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item.rosterEntries.item collection
     * @param rosterEntryId Tournament roster entry ID.
     * @return a {@link WithRosterEntryItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithRosterEntryItemRequestBuilder byRosterEntryId(@jakarta.annotation.Nonnull final String rosterEntryId) {
        Objects.requireNonNull(rosterEntryId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("rosterEntryId", rosterEntryId);
        return new WithRosterEntryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link RosterEntriesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RosterEntriesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries", pathParameters);
    }
    /**
     * Instantiates a new {@link RosterEntriesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RosterEntriesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries", rawUrl);
    }
}
