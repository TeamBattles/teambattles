package gg.teambattles.sdk.generated.chat.messages.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.chat.messages.item.report.ReportRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /chat/messages/{messageId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithMessageItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The report property
     * @return a {@link ReportRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ReportRequestBuilder report() {
        return new ReportRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithMessageItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMessageItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/chat/messages/{messageId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithMessageItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMessageItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/chat/messages/{messageId}", rawUrl);
    }
}
