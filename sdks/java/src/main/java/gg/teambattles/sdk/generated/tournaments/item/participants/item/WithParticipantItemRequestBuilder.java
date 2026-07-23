package gg.teambattles.sdk.generated.tournaments.item.participants.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.participants.item.checkin.CheckInRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.participants.item.disqualify.DisqualifyRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.participants.item.remove.RemoveRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.participants.item.roster.RosterRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.participants.item.withdraw.WithdrawRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithParticipantItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The checkIn property
     * @return a {@link CheckInRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CheckInRequestBuilder checkIn() {
        return new CheckInRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The disqualify property
     * @return a {@link DisqualifyRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DisqualifyRequestBuilder disqualify() {
        return new DisqualifyRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The remove property
     * @return a {@link RemoveRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RemoveRequestBuilder remove() {
        return new RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The roster property
     * @return a {@link RosterRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RosterRequestBuilder roster() {
        return new RosterRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The withdraw property
     * @return a {@link WithdrawRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithdrawRequestBuilder withdraw() {
        return new WithdrawRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithParticipantItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithParticipantItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithParticipantItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithParticipantItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}", rawUrl);
    }
}
