package gg.teambattles.sdk.generated.chat.messages.item.report;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.ReportChatMessageRequestBody;
import gg.teambattles.sdk.generated.models.ReportChatMessageResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /chat/messages/{messageId}/report
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ReportRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ReportRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ReportRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/chat/messages/{messageId}/report", pathParameters);
    }
    /**
     * Instantiates a new {@link ReportRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ReportRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/chat/messages/{messageId}/report", rawUrl);
    }
    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message&apos;s chat room; a non-participant receives 403. System messages and the owner&apos;s own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Reports a chat message for staff moderation review.
     * @return a {@link ReportChatMessageResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ReportChatMessageResponse post(@jakarta.annotation.Nonnull final ReportChatMessageRequestBody body) {
        return post(body, null);
    }
    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message&apos;s chat room; a non-participant receives 403. System messages and the owner&apos;s own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Reports a chat message for staff moderation review.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link ReportChatMessageResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public ReportChatMessageResponse post(@jakarta.annotation.Nonnull final ReportChatMessageRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
        return this.requestAdapter.send(requestInfo, errorMapping, ReportChatMessageResponse::createFromDiscriminatorValue);
    }
    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message&apos;s chat room; a non-participant receives 403. System messages and the owner&apos;s own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Reports a chat message for staff moderation review.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final ReportChatMessageRequestBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message&apos;s chat room; a non-participant receives 403. System messages and the owner&apos;s own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Reports a chat message for staff moderation review.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final ReportChatMessageRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link ReportRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ReportRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ReportRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
