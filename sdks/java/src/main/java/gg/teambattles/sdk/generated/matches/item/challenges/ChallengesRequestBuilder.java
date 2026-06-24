package gg.teambattles.sdk.generated.matches.item.challenges;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.matches.item.challenges.accept.AcceptRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.challenges.refuse.RefuseRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /matches/{matchId}/challenges
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ChallengesRequestBuilder extends BaseRequestBuilder {
    /**
     * The accept property
     * @return a {@link AcceptRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public AcceptRequestBuilder accept() {
        return new AcceptRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The refuse property
     * @return a {@link RefuseRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RefuseRequestBuilder refuse() {
        return new RefuseRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link ChallengesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ChallengesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/challenges", pathParameters);
    }
    /**
     * Instantiates a new {@link ChallengesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ChallengesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/challenges", rawUrl);
    }
}
